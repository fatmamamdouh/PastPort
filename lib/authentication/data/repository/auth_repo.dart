import 'package:pastport/authentication/data/data_source/remote_data_source.dart';
import 'package:pastport/authentication/domain/entities/registeration.dart';
import 'package:pastport/authentication/domain/repository/base_auth_repo.dart';

class AuthRepository implements BaseAuthRepository
{

  BaseAuthRemoteDataSource baseAuthRemoteDataSource;
  AuthRepository(this.baseAuthRemoteDataSource);

  @override
  void checkIfUserLoggedIn() {
    // TODO: implement checkIfUserLoggedIn
  }

  @override
  void logout() {
    // TODO: implement logout
  }

  @override
  Future<Registeration> registerNewUser() async {
    return await baseAuthRemoteDataSource.registerNewUser();

  }

  @override
  void resetNewPassword() {
    // TODO: implement resetNewPassword
  }

  @override
  void sendPasswordResetEmail() {
    // TODO: implement sendPasswordResetEmail
  }

  @override
  void userLoginWithEmailAndPassword() {
    baseAuthRemoteDataSource.userLoginWithEmailAndPassword();
  }

  @override
  void userLoginWithFacebook() {
    // TODO: implement userLoginWithFacebook
  }

  @override
  void userLoginWithGoogle() {
    // TODO: implement userLoginWithGoogle
  }

  @override
  void validateEmail() {
    // TODO: implement validateEmail
  }

  @override
  void verifyResetCode() {
    // TODO: implement verifyResetCode
  }

}