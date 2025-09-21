class Pokemon {
  final String name;
  final String url;
  final String imageUrl;
  final int id;

  Pokemon({
    required this.name,
    required this.url,
    required this.imageUrl,
    required this.id,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    final url = json['url'] as String;
    final id = int.parse(url.split('/').where((s) => s.isNotEmpty).last);
    
    return Pokemon(
      name: json['name'],
      url: url,
      id: id,
      imageUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png',
    );
  }
}