# forexample

A new Flutter project.

- Install (<https://flutter.dev/docs/get-started/install>).

- To verify proper installation

flutter doctor -v

## Tools

- VSCode (<https://code.visualstudio.com/download>).
- VSCode Extensions
    - Flutter (<https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter>)
    - Dart (<https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code>)
    
- Android Studio
    - Enable Flutter and Dart plugins in settings

## Run Locally

- Configure local development environment:

flutter pub get

- Run in debug mode (log enabled):

flutter run

- Run in release mode (log disabled):

flutter run --release

## Code generator "build_runner"

flutter pub run build_runner build

- To remove conflicts

flutter pub run build_runner build --delete-conflicting-outputs

- To watch changes

flutter pub run build_runner watch

## Translations

flutter pub run easy_localization:generate -S lib/lang -O lib/lang/gen
