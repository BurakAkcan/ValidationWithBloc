part of 'sign_bloc.dart';

@immutable
abstract class SignEvent {}

class SignInChangedEvent extends SignEvent {
  final String emailValue;
  final String passwordValue;
  SignInChangedEvent({
    required this.emailValue,
    required this.passwordValue,
  });
}

class SignInSubmittedEvent extends SignEvent {
  final String email;
  final String password;
  SignInSubmittedEvent({
    required this.email,
    required this.password,
  });
}
