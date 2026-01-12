part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class UserSignInEvent extends AuthEvent {
  final UserModel userModel;

  UserSignInEvent({required this.userModel});
}

class UserCreateEvent extends AuthEvent {
  final UserModel userModel;

  UserCreateEvent({required this.userModel});
}
