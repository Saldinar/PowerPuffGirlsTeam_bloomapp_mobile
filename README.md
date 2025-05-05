# bloom_app

Bloom admin app.

## About the project

Bloom is a **FemTech app** designed for women to help them plan their lives in harmony with their menstrual cycle.  
This admin panel is used to manage content, users, and interactions within the Bloom ecosystem.  
The app is built using **clean architecture** and modern **Flutter** tools to ensure maintainability, scalability, and great user experience.

## 🧱 Tech Stack

- follows Clean Architecture
- uses Flutter Bloc state management
- uses go_router for navigation
- get_it, injectable for dependency injection
- dio, retrofit for rest api handling

## 🚀 How to Run the Project

1. Install the [Flutter SDK](https://docs.flutter.dev/get-started/install) (we recommend using [FVM](https://fvm.app/docs/getting_started) with version `3.27.3`)
2. Make sure you have [Visual Studio Code](https://code.visualstudio.com/) installed with the Flutter extension
3. Clone or extract the ZIP file of this project
4. Open a terminal in the project directory and run the following commands:

```bash
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs


# After cloning the repository you should:

# - create .env file in project root and save tokens as AMITY_API_KEY, AMITY_ADMIN_ACCESS_TOKEN
# - then you can get started by using the Flutter version specified in
#   the [pubspec.yaml](pubspec.yaml) file and by running:

# flutter pub get && dart run build_runner build --delete-conflicting-outputs
# && dart run flutter_native_splash:create
# cd packages/app_localization && flutter pub get && dart run build_runner build --delete-conflicting-outputs && cd ../../

# Do not forget to set correct base url in lib/core/constants/network_constants.dart# PowerPuffGirlsTeam_bloomapp_mobile
# ```
