part of 'splash_cubit.dart';

abstract class SplashState extends Equatable{}

class SplashInitial extends SplashState {
  @override
  List<Object?> get props => [];
}

class SplashLoading extends SplashState {
  @override
  List<Object?> get props => [];
}

class SplashLoaded extends SplashState {
  @override
  List<Object?> get props => [];
}

class SplashFailed extends SplashState {
  final String error;

  SplashFailed({required this.error});

  @override
  List<Object?> get props => [error];
}
