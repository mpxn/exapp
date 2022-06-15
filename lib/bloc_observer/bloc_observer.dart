import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';

class ObserverBloc extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log('onCreate: ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log('onChange: ${bloc.runtimeType},\n CurrentState: ${change.currentState}\n NextState: ${change.nextState}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('onError: ${bloc.runtimeType},\n error -- $error\n stackTrace -- $stackTrace');

    /// TODO: implement Firebase Crashlytics

    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    log('onClose: ${bloc.runtimeType}');
  }
}
