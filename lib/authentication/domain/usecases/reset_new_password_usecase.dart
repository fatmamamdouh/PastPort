import 'package:pastport/authentication/domain/repository/base_auth_repo.dart';

class ResetNewPassword
{
  final BaseAuthRepository baseAuthRepository;

  ResetNewPassword(this.baseAuthRepository);

  void execute()
  {
    return baseAuthRepository.resetNewPassword();
  }

}