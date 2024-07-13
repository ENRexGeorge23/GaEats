import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashScreenEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<SplashRequestedEvent>((event, emit) async {
      emit(SplashLoadingState());
      emit(SplashLoadedState());
    });
  }
}
