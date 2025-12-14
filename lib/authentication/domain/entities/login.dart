import 'package:equatable/equatable.dart';

class Login extends Equatable {
  final String firstName;
  final String lastName;
  final String token;
  final String email;
  final String userName;
  final String password;
  final String confirmationPassword;

  const Login({
    required this.firstName,
    required this.lastName,
    required this.token,
    required this.email,
    required this.userName,
    required this.password,
    required this.confirmationPassword,
  });

  @override
  List<Object?> get props => [
    firstName,
    lastName,
    email,
    userName,
    password,
    confirmationPassword,
    token,
  ];
}
