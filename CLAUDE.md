# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

**Mohtaaj** is a Flutter marketplace application for buying/selling items, built with Arabic localization (RTL). The app includes real-time chat functionality via Socket.IO, location-based features, and image handling with compression.

## Development Commands

### Code Generation
```bash
# Generate code for Freezed, JSON serialization, and Retrofit
dart run build_runner build --delete-conflicting-outputs

# Watch mode for continuous code generation
dart run build_runner watch --delete-conflicting-outputs
```

### Running the App
```bash
# Run on default device
flutter run

# Run on specific device
flutter run -d <device-id>

# Run with flavor (if configured)
flutter run --flavor dev
```

### Testing & Analysis
```bash
# Run static analysis
flutter analyze

# Run tests
flutter test

# Run specific test file
flutter test test/widget_test.dart
```

### Build Commands
```bash
# Build APK for Android
flutter build apk --release

# Build iOS
flutter build ios --release

# Generate app icons (after updating assets/app_icon.png)
flutter pub run flutter_launcher_icons
```

### Dependencies
```bash
# Install dependencies
flutter pub get

# Upgrade dependencies
flutter pub upgrade
```

## Architecture

This project follows **Clean Architecture** with a **feature-first** structure using **BLoC/Cubit** for state management.

### Directory Structure

```
lib/
├── core/                           # Shared infrastructure
│   ├── di/                         # Dependency injection (GetIt)
│   │   └── dependency_injection.dart
│   ├── networking/                 # API layer (Retrofit + Dio)
│   │   ├── api_service.dart        # Generated Retrofit API client
│   │   ├── dio_factory.dart        # Dio configuration
│   │   ├── api_constants.dart      # API endpoints
│   │   ├── api_error_handler.dart  # Centralized error handling
│   │   └── api_result.dart         # Result wrapper (Freezed)
│   ├── routing/                    # App navigation
│   │   ├── app_router.dart         # Route generation logic
│   │   └── routes.dart             # Route constants
│   ├── services/                   # Business services
│   │   ├── auth_service.dart       # Token management & auth state
│   │   └── location_service.dart   # GPS & geocoding
│   ├── theming/                    # Design system
│   ├── helpers/                    # Utilities, extensions, validators
│   └── widgets/                    # Reusable widgets
│
└── features/                       # Feature modules
    ├── auth/                       # Authentication (login, register, email verification, password reset)
    ├── home/                       # Home screen with featured items
    ├── items/                      # Item listing, details, creation, editing
    ├── categories/                 # Category browsing
    ├── search/                     # Search & filtering
    ├── chats/                      # Real-time messaging (Socket.IO)
    ├── favorites/                  # User favorites
    ├── profile/                    # User profile & ratings
    ├── reports/                    # User reports
    ├── main_layout/                # Bottom navigation shell
    └── onboarding/                 # First-launch onboarding

Each feature follows:
    ├── data/
    │   ├── models/                 # Freezed data models + JSON serialization
    │   └── services/               # (optional) Feature-specific services
    ├── logic/
    │   └── <name>_cubit/
    │       ├── <name>_cubit.dart
    │       └── <name>_state.dart   # Freezed state classes
    └── ui/
        ├── screens/
        └── widgets/
```

### Key Architectural Patterns

#### 1. Dependency Injection (GetIt)
- All services, API clients, and Cubits are registered in `core/di/dependency_injection.dart`
- Cubits use **factory** registration (new instance per screen)
- Services use **lazy singleton** (single shared instance)
- Use `getIt<T>()` to resolve dependencies
- Some Cubits use `getIt.registerFactoryParam` for parameterized instances (e.g., `ItemDetailsCubit` takes `itemId`)

#### 2. State Management (flutter_bloc)
- Each feature has one or more **Cubits** for business logic
- States are **immutable** and use **Freezed** with `copyWith` for updates
- Cubits are provided via `BlocProvider` in routing layer (see `app_router.dart`)
- UI rebuilds via `BlocBuilder`, `BlocConsumer`, or `BlocListener`

#### 3. Networking (Retrofit + Dio)
- All API calls defined in `core/networking/api_service.dart` using **Retrofit annotations**
- Dio instance configured in `dio_factory.dart` with interceptors for:
  - Authentication (Bearer token)
  - Request/response logging (`pretty_dio_logger`)
  - Token refresh logic (handled via interceptor)
- API responses use **Freezed models** for type safety
- Error handling centralized in `api_error_handler.dart`

#### 4. Real-time Communication (Socket.IO)
- `SocketService` in `features/chats/data/services/socket_service.dart` is a **singleton**
- Connects on app startup if user is logged in (see `main.dart`)
- Provides event streams: `newMessageStream`, `userTypingStream`, `messagesReadStream`, etc.
- `SocketCubit` manages connection state across the app
- Chat screens listen to socket streams for real-time updates

#### 5. Authentication & Token Management
- `AuthService` handles:
  - Storing/retrieving access & refresh tokens (via `flutter_secure_storage`)
  - Token refresh flow
  - User ID persistence
- Tokens are automatically injected into API requests via Dio interceptor
- On login success, app registers `userId` as a named singleton in GetIt

#### 6. Location Services
- `LocationService` wraps `geolocator` and `geocoding` packages
- Used in item creation to attach coordinates and address to listings
- Handles permission requests and fallback to manual input

#### 7. Image Handling
- Images compressed using `flutter_image_compress` before upload (see `create_item_cubit`)
- Upload endpoint: `POST /api/upload/image` returns URL
- Cached with `cached_network_image` for performance
- Local storage via `path_provider`

## Code Generation Requirements

This project uses **code generation** for several features:

### When to Regenerate
Run `dart run build_runner build --delete-conflicting-outputs` after modifying:
- **Freezed classes** (any file with `@freezed` annotation) - for state classes and data models
- **JSON Serializable classes** (files with `@JsonSerializable()`) - for API request/response models
- **Retrofit API definitions** (`api_service.dart`) - when adding/modifying API endpoints

### Generated Files
- `*.freezed.dart` - Freezed code (copyWith, == operator, toString)
- `*.g.dart` - JSON serialization (toJson/fromJson) and Retrofit implementations
- Do NOT manually edit these files

## Important Implementation Details

### RTL Support
- App locale is hardcoded to Arabic (`ar`) in `mohtaaj_app.dart`
- Design size: `375x812` (ScreenUtil)
- Use `flutter_screenutil` for responsive sizing (`w`, `h`, `sp` extensions)

### Navigation
- Routes are defined as constants in `core/routing/routes.dart`
- Navigation handled via `AppRouter.generateRoute` in `app_router.dart`
- Cubits are provided at route level using `BlocProvider` in the router

### State Initialization
- Most Cubits load data in `init` methods or similar
- Call these methods in widget's `initState` or use `BlocProvider`'s `create` callback

### API Base URL
- Production API: `https://mohtaaj.onrender.com`
- Defined in `core/networking/api_constants.dart`

### Socket Connection Lifecycle
- Socket connects in `main.dart` if user is logged in
- Socket reconnects automatically on app resume (handled in `main_layout_cubit`)
- Always disconnect socket on logout (see `ProfileCubit.logout`)

### Pagination & Infinite Scroll
- Implemented in `items_list_cubit` and `chats_list_cubit`
- Uses `pull_to_refresh` package for pull-to-refresh functionality
- Page-based pagination with `page` and `limit` query params

### Error Handling
- API errors mapped to user-friendly messages in `api_error_handler.dart`
- Network errors, timeouts, and server errors have specific handling
- UI displays errors via `SnackBar` or in-widget error states

## Development Workflow

1. **Adding a New Feature**:
   - Create feature folder under `lib/features/<feature_name>/`
   - Add `data/models/`, `logic/<cubit_name>/`, `ui/screens/`, `ui/widgets/`
   - Define API endpoints in `api_service.dart`
   - Register Cubit in `dependency_injection.dart`
   - Add route in `routes.dart` and `app_router.dart`

2. **Adding API Endpoint**:
   - Add endpoint constant in `api_constants.dart`
   - Define method in `api_service.dart` with `@GET/@POST/@PUT/@DELETE` annotation
   - Create request/response models with Freezed + JsonSerializable
   - Run `build_runner` to generate code

3. **Creating New Data Model**:
   ```dart
   import 'package:freezed_annotation/freezed_annotation.dart';

   part 'model_name.freezed.dart';
   part 'model_name.g.dart';

   @freezed
   class ModelName with _$ModelName {
     const factory ModelName({
       required String id,
       required String name,
     }) = _ModelName;

     factory ModelName.fromJson(Map<String, dynamic> json) =>
         _$ModelNameFromJson(json);
   }
   ```

4. **Creating New Cubit**:
   - Define state with Freezed
   - Inject dependencies via constructor
   - Use `emit` to update state
   - Handle errors with try/catch and `ApiErrorHandler`
   - Register in `dependency_injection.dart`

## Common Gotchas

- **Always run `flutter pub get` after pulling changes** to sync dependencies
- **Code generation is required** for API and state changes to work - don't skip `build_runner`
- **Socket connection must be managed carefully** - connect on login, disconnect on logout
- **Cubit instances are created per-screen** (factory registration) - don't expect state to persist across navigation
- **Image compression happens before upload** - don't upload raw images
- **RTL layout is enabled globally** - design widgets with RTL in mind
- **Location permissions must be requested** before accessing GPS data
- **Token refresh is automatic** via Dio interceptor, but handle 401 errors for expired refresh tokens