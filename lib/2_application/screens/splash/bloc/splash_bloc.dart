import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashState> {
  SplashScreenBloc() : super(SplashInitial()) {
    on<SplashRequestedEvent>((event, emit) async {
      emit(SplashLoadingState());
      await Future.delayed(const Duration(seconds: 2));
      emit(SplashLoadedState());
    });
  }
}
