import 'package:pastport/authentication/domain/repository/base_auth_repo.dart';

class UserLoginWithGoogle
{
  final BaseAuthRepository baseAuthRepository;

  UserLoginWithGoogle(this.baseAuthRepository);

  void execute()
  {
    return baseAuthRepository.userLoginWithGoogle();
  }

}