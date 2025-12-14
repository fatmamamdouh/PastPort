import 'package:pastport/authentication/domain/repository/base_auth_repo.dart';

class UserLoginWithFacebook
{
  final BaseAuthRepository baseAuthRepository;

  UserLoginWithFacebook(this.baseAuthRepository);

  void execute()
  {
    return baseAuthRepository.userLoginWithFacebook();
  }

}