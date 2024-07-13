part of 'splash_bloc.dart';

@immutable
abstract class SplashScreenEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SplashRequestedEvent extends SplashScreenEvent {}
