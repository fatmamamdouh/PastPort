import 'package:pastport/authentication/domain/repository/base_auth_repo.dart';

class UserLogout
{
  final BaseAuthRepository baseAuthRepository;

  UserLogout(this.baseAuthRepository);

  void execute()
  {
    return baseAuthRepository.logout();
  }

}