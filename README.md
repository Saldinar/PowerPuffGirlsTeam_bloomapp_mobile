# bloom_app

Bloom admin app.

## Getting Started

In this repository, we are going to build IMDB Clone application. This project will involve some
best practices and tools.

The project:

- follows Clean Architecture
- uses Flutter Bloc state management
- uses go_router for navigation
- get_it, injectable for dependency injection
- dio, retrofit for rest api handling
- slang for language handling

## Quick start

After cloning the repository you should:

- create .env file in project root and save tokens as AMITY_API_KEY, AMITY_ADMIN_ACCESS_TOKEN
- then you can get started by using the Flutter version specified in
  the [pubspec.yaml](pubspec.yaml) file and by running:

flutter pub get && dart run build_runner build --delete-conflicting-outputs
&& dart run flutter_native_splash:create
cd packages/app_localization && flutter pub get && dart run build_runner build --delete-conflicting-outputs && cd ../../

Do not forget to set correct base url in lib/core/constants/network_constants.dart# PowerPuffGirlsTeam_bloomapp_mobile
