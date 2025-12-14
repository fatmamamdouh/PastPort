import 'package:pastport/authentication/domain/repository/base_auth_repo.dart';

class RegisterNewUser
{
  final BaseAuthRepository baseAuthRepository;

  RegisterNewUser(this.baseAuthRepository);

  void execute()
  {
    return baseAuthRepository.registerNewUser();
  }

}