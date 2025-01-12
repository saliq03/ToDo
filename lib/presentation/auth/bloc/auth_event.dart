part of 'auth_bloc.dart';

class AuthEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

class SignUpWithEmailAndPassword extends AuthEvent{
  final String email,password;

  SignUpWithEmailAndPassword({required this.email, required this.password});

  @override
  List<Object?> get props => [email,password];
}

class SignInWithEmailAndPassword extends AuthEvent{
  final String email,password;

  SignInWithEmailAndPassword({required this.email, required this.password});

  @override
  List<Object?> get props => [email,password];
}
