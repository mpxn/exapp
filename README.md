# forexample

The project was developed and tested for android. Please run on the target platform. 
To run, clone exapp and forexample_modules into the same directory and follow the instructions.

- Install (<https://flutter.dev/docs/get-started/install>).

- To verify proper installation
```sh
flutter doctor -v
```

## Tools

- VSCode (<https://code.visualstudio.com/download>).
- VSCode Extensions
  - Flutter (<https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter>)
  - Dart (<https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code>)

- Android Studio
  - Enable Flutter and Dart plugins in settings

## Run Locally

- Configure local development environment:
```sh
flutter pub get
```

- Run in debug mode (log enabled):
```sh
flutter run
```

- Run in release mode (log disabled):
```sh
flutter run --release
```

## Code generator "build_runner"
```sh
flutter pub run build_runner build
```

- To remove conflicts
```sh
flutter pub run build_runner build --delete-conflicting-outputs
```

- To watch changes
```sh
flutter pub run build_runner watch
```

## Translations
```sh
flutter pub run easy_localization:generate -S lib/lang -O lib/lang/gen
```
