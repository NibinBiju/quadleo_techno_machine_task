part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final String message;

  AuthSuccess({required this.message});
}

final class AuthFailed extends AuthState {
  final String message;

  AuthFailed({required this.message});
}
