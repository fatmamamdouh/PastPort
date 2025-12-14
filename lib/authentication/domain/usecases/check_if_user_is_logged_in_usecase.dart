import 'package:pastport/authentication/domain/repository/base_auth_repo.dart';

class CheckIfUserIsLoggedIn
{
  final BaseAuthRepository baseAuthRepository;

  CheckIfUserIsLoggedIn(this.baseAuthRepository);

  void execute()
  {
    return baseAuthRepository.checkIfUserLoggedIn();
  }

}