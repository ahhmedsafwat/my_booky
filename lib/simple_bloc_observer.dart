import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    debugPrint('bloc $bloc');
    debugPrint('change $change');
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint(bloc as String?);
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint(bloc as String?);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
  }
}
