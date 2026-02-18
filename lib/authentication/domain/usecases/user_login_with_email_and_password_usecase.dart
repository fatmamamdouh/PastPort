import 'package:pastport/authentication/domain/repository/base_auth_repo.dart';

class UserLoginWithEmailAndPassword
{
  final BaseAuthRepository baseAuthRepository;

  UserLoginWithEmailAndPassword(this.baseAuthRepository);

  void execute()
  {
    return baseAuthRepository.userLoginWithEmailAndPassword();
  }

}