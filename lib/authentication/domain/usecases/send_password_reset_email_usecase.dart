import 'package:pastport/authentication/domain/repository/base_auth_repo.dart';

class SendPasswordResetEmail
{
  final BaseAuthRepository baseAuthRepository;

  SendPasswordResetEmail(this.baseAuthRepository);

  void execute()
  {
    return baseAuthRepository.sendPasswordResetEmail();
  }

}