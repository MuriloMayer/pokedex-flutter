# 🔴 Pokédex Explorer

Um aplicativo Flutter que consome a **PokéAPI** para criar um catálogo interativo de Pokémon com sistema de favoritos.
## 🛠️ Tecnologias Utilizadas

- **Flutter** 3.35.4
- **Dart**
- **Provider** - Gerenciamento de estado
- **HTTP** - Requisições à API
- **Cached Network Image** - Cache de imagens
- **PokéAPI** - Fonte de dados dos Pokémon

## 📦 Dependências

```yaml
dependencies:
  flutter:
    sdk: flutter
  http: ^1.1.0
  provider: ^6.0.5
  cached_network_image: ^3.3.0
```

## 🚀 Como Executar

### Pré-requisitos
- Flutter SDK instalado
- Android Studio (para emulador Android)
- VS Code ou Android Studio (IDE)

### Passos
1. **Clone o repositório**
   ```bash
   git clone https://github.com/SEU_USUARIO/pokedex-explorer.git
   cd pokedex-explorer
   ```

2. **Instale as dependências**
   ```bash
   flutter pub get
   ```

3. **Execute o aplicativo**
   ```bash
   flutter run
   ```

## 🏗️ Estrutura do Projeto

```
lib/
├── main.dart                 # Ponto de entrada da aplicação
├── models/                   # Modelos de dados
│   ├── pokemon.dart         # Modelo básico do Pokémon
│   └── pokemon_detail.dart  # Modelo detalhado do Pokémon
├── services/                # Serviços de API
│   └── pokemon_service.dart # Comunicação com PokéAPI
├── providers/               # Gerenciamento de estado
│   └── favorites_provider.dart # Provider dos favoritos
├── screens/                 # Telas da aplicação
│   ├── home_screen.dart    # Tela principal
│   ├── pokemon_detail_screen.dart # Tela de detalhes
│   └── favorites_screen.dart # Tela de favoritos
└── widgets/                 # Componentes reutilizáveis
    └── pokemon_card.dart   # Card do Pokémon
```

## 🌐 API Utilizada

**PokéAPI**: https://pokeapi.co/
- Endpoints utilizados:
  - `GET /pokemon` - Lista de Pokémon
  - `GET /pokemon/{id}` - Detalhes do Pokémon

## 👨‍💻 Desenvolvedores

Murilo Mayer Van Nouhuys
- GitHub: [@MuriloMayer](https://github.com/murilomayer)

Lucas Andreas Baumer
- GitHub: [@LucasBaumer](https://github.com/lucasbaumer)

Matheus Kormann Svidinick
- GitHub: [@MatheusKormann](https://github.com/matheuskormann)
