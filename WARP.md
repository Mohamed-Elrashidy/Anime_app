# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Project Overview

This is a Flutter anime streaming application featuring a modern UI design with bottom navigation, anime browsing, character exploration, and category filtering.

**Target Device**: iPhone 16 Plus (430x932 logical pixels)
**Framework**: Flutter 3.7.0+
**Architecture**: Clean Architecture with feature-based folder structure

## Common Development Commands

### Build and Run
```bash
# Run the app in debug mode
flutter run

# Run on specific device
flutter run -d "iPhone 16 Plus"

# Build for iOS
flutter build ios

# Build for Android  
flutter build apk
```

### Testing and Quality
```bash
# Run all tests
flutter test

# Run a specific test file
flutter test test/widget_test.dart

# Check code quality and linting
flutter analyze

# Format code
dart format .
```

### Dependencies Management
```bash
# Get dependencies
flutter pub get

# Update dependencies
flutter pub upgrade

# Add a new dependency
flutter pub add package_name

# Clean build artifacts
flutter clean
```

### Screen Utility Commands
```bash
# Regenerate responsive design configurations
flutter packages pub run build_runner build
```

## Architecture and Code Structure

### Feature-Based Architecture
- `lib/features/` - Feature modules (anime, home, navigation_bar)
- `lib/core/` - Shared utilities, themes, constants, and enums
- Each feature follows Clean Architecture: domain/entity, presentation/ui

### Responsive Design System
- **ScreenUtil Configuration**: Designed for iPhone 16 Plus (430x932)
- All dimensions use `.w` (width), `.h` (height), `.sp` (font size), `.r` (radius)
- Text styles automatically scale with ScreenUtil

### Key Components
1. **Entity Layer**: `AnimeEntity`, `CharacterEntity` with comprehensive data models
2. **UI Components**: Reusable cards, grids, and overview widgets
3. **Theme System**: Centralized colors, text styles, and gradients
4. **Navigation**: Persistent bottom navigation with 5 tabs

### Data Flow
- Sample data providers in `core/data/sample_data.dart`
- Entities define the data structure for anime and characters
- UI components consume data through widget composition

### Styling Conventions
- Use AppColors class for consistent color scheme
- AppTextStyles provides responsive typography
- Gradients and shadows follow material design principles
- Cards use consistent border radius (16.r) and elevation

## Key Files to Understand

- `lib/anime_app.dart` - Main app with ScreenUtil configuration
- `lib/features/home/presentation/ui/pages/home_page.dart` - Main home screen
- `lib/features/home/presentation/ui/widgets/anime_overview.dart` - Core content widget
- `lib/core/theme/` - Complete theming system
- `lib/core/enums/` - All application enumerations

## Development Guidelines

### Adding New Features
1. Follow the existing feature structure: `features/[feature_name]/domain|presentation`
2. Create entities in domain layer first
3. Build UI components with ScreenUtil responsiveness
4. Use existing AppTextStyles and AppColors

### UI Development
- Always use ScreenUtil for responsive design (.w, .h, .sp, .r)
- Follow the established card design patterns
- Implement proper loading states and error handling
- Use consistent spacing and elevation patterns

### State Management
- Currently uses StatefulWidget for local state
- Ready for state management solution integration (BLoC, Riverpod, etc.)

## Assets and Resources

- SVG assets in `assets/svg_images/`
- App uses flutter_svg for vector graphics
- Placeholder images replaced with gradient containers and icons

## Dependencies

**UI & Design:**
- `flutter_screenutil: ^5.9.3` - Responsive design
- `flutter_svg: ^2.2.1` - Vector graphics
- `persistent_bottom_nav_bar: ^6.2.1` - Bottom navigation

**Development:**
- `flutter_lints: ^5.0.0` - Code quality
- `flutter_test` - Testing framework