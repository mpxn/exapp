import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'bloc_observer/bloc_observer.dart';
import 'lang/gen/codegen_loader.g.dart';
import 'package:build_app/builder_app.dart';
import 'package:beamer/beamer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  BlocOverrides.runZoned(
    () {
      runApp(
        EasyLocalization(
          path: 'lib/lang',
          fallbackLocale: const Locale('en'),
          useOnlyLangCode: true,
          supportedLocales: const [
            Locale('en'),
          ],
          assetLoader: const CodegenLoader(),
          child: MyApp(),
        ),
      );
    },
    blocObserver: ObserverBloc(),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final routerDelegate = BeamerDelegate(
    initialPath: '/builderApp',
    locationBuilder: RoutesLocationBuilder(
      routes: {
        '*': (context, state, data) => const BuilderApp(),
      },
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher: BeamerBackButtonDispatcher(
        delegate: routerDelegate,
      ),
    );
  }
}
