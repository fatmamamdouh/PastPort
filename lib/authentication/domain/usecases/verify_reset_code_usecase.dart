import 'package:pastport/authentication/domain/repository/base_auth_repo.dart';

class VerifyResetCode
{
  final BaseAuthRepository baseAuthRepository;

  VerifyResetCode(this.baseAuthRepository);

  void execute()
  {
    return baseAuthRepository.verifyResetCode();
  }

}