import 'package:pastport/authentication/domain/entities/registeration.dart';
import 'package:pastport/authentication/domain/repository/base_auth_repo.dart';

class RegisterNewUser
{
  final BaseAuthRepository baseAuthRepository;

  RegisterNewUser(this.baseAuthRepository);

  Future<Registeration> execute() async
  {
    return await baseAuthRepository.registerNewUser();
  }

}