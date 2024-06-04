import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginRequestedEvent>(loginRequestedEvent);
  }

  FutureOr<void> loginRequestedEvent(
      LoginRequestedEvent event, Emitter<LoginState> emit) {
    emit(LoginLoadingState());

    emit(LoginLoadedState());
  }
}
