part of 'sign_bloc.dart';

@immutable
abstract class SignState {}

class SignInitial extends SignState {}



class SignInValided extends SignState {}

class SignInErrorState extends SignState {
  final String message;
  SignInErrorState({
    required this.message,
  });
}

class SignInLoadingState extends SignState {}
