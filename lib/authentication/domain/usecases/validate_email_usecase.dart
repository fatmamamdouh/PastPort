import 'package:pastport/authentication/domain/repository/base_auth_repo.dart';

class ValidateEmail
{
  final BaseAuthRepository baseAuthRepository;

  ValidateEmail(this.baseAuthRepository);

  void execute()
  {
    return baseAuthRepository.validateEmail();
  }

}