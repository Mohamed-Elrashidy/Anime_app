# 🎌 Anime App

A beautiful Flutter-based anime browsing and streaming application with a modern UI design, built using clean architecture principles and feature-driven development.


## 🏗️ Architecture

The app follows **Clean Architecture** principles with a feature-driven structure:

```
lib/
├── core/                    # Shared utilities and configurations
│   ├── constants/          # App assets and constants
│   ├── dummy_data/         # Sample data for development
│   ├── enums/              # App-wide enums (genres, status, etc.)
│   ├── routing/            # Navigation and routing logic
│   ├── theme/              # Colors, text styles, dimensions
│   └── widgets/            # Reusable UI components
├── features/               # Feature-based modules
│   ├── anime/              # Anime details and management
│   ├── characters/         # Character information
│   ├── home/               # Home screen functionality
│   ├── navigation_bar/     # Bottom navigation
│   └── subscription/       # Premium subscription features
└── main.dart               # App entry point
```


### Core Dependencies
- **flutter_screenutil**: Responsive design and sizing
- **flutter_svg**: SVG image support
- **persistent_bottom_nav_bar**: Bottom navigation with state persistence


## 📊 Sample Data

The app includes sample data featuring popular anime:

- **Detective Conan** (Mystery, 2024)
- **Hunter x Hunter** (Adventure, 2011)
- **Demon Slayer** (Dark Fantasy, 2019)

And popular characters:
- **Gon Freecss** (Hunter x Hunter)
- **Naruto Uzumaki** (Naruto)
- **Luffy** (One Piece)


### Feature Modules
Each feature follows the same structure:
```
feature/
├── data/
│   ├── data_source/        # Remote/local data sources
│   ├── models/             # Data models
│   └── repository/         # Repository implementations
├── domain/
│   ├── entity/             # Business entities
│   └── use_cases/          # Business logic
└── presentation/
    ├── controllers/        # State management
    └── ui/
        ├── pages/          # Screen widgets
        └── widgets/        # Reusable components
```


### Code Style
- Follow Flutter/Dart conventions
- Use meaningful variable and function names

