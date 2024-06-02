part of 'splash_bloc.dart';

@immutable
abstract class SplashState extends Equatable {
  @override
  List<Object> get props => [];
}

class SplashInitial extends SplashState {}

class SplashLoadingState extends SplashState {}

class SplashLoadedState extends SplashState {}

class SplashErrorState extends SplashState {
  final String message;

  SplashErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
