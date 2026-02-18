import 'package:equatable/equatable.dart';

class Registeration extends Equatable {
  final bool success;
  final String message;
  final String token;
  final String tokenExpiration;
  final String refreshToken;
  final String id;
  final String email;
  final String firstName;
  final String lastName;

  Registeration(
    this.success,
    this.message,
    this.token,
    this.tokenExpiration,
    this.refreshToken,
    this.id,
    this.email,
    this.firstName,
    this.lastName,
  );

  @override
  List<Object?> get props => [
    success,
    message,
    token,
    tokenExpiration,
    refreshToken,
    id,
    email,
    firstName,
    lastName,
  ];
}
