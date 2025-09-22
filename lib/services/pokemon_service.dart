import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../models/pokemon.dart';
import '../models/pokemon_detail.dart';

class PokemonService {
  static String get baseUrl => dotenv.env['POKEMON_API_BASE_URL'] ?? 'https://pokeapi.co/api/v2';

  static Future<List<Pokemon>> getPokemonList({int offset = 0, int limit = 20}) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/pokemon?offset=$offset&limit=$limit'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final results = data['results'] as List;
        return results.map((json) => Pokemon.fromJson(json)).toList();
      } else {
        throw Exception('Falha ao carregar Pokémon');
      }
    } catch (e) {
      throw Exception('Erro de conexão: $e');
    }
  }

  static Future<PokemonDetail> getPokemonDetail(String nameOrId) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/pokemon/${nameOrId.toLowerCase()}'),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return PokemonDetail.fromJson(data);
      } else {
        throw Exception('Pokémon não encontrado');
      }
    } catch (e) {
      throw Exception('Erro ao buscar detalhes: $e');
    }
  }
}