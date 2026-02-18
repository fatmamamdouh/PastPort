import 'package:pastport/authentication/domain/entities/registeration.dart';

class RegisterModel extends Registeration {
  RegisterModel(
    super.success,
    super.message,
    super.token,
    super.tokenExpiration,
    super.refreshToken,
    super.id,
    super.email,
    super.firstName,
    super.lastName,
  );

  factory RegisterModel.fromJson(Map<String, dynamic> json)
  {
    return RegisterModel(
      json['success'],
      json['message'],
      json['token'],
      json['tokenExpiration'],
      json['refreshToken'],
      json['user']['id'],
      json['user']['email'],
      json['user']['firstName'],
      json['user']['lastName'],
    );
  }
}
