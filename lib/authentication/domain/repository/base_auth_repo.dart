
import 'package:pastport/authentication/domain/entities/registeration.dart';

abstract class BaseAuthRepository
{
  void userLoginWithEmailAndPassword();
  void userLoginWithFacebook();
  void userLoginWithGoogle();
  Future<Registeration> registerNewUser();
  void checkIfUserLoggedIn();
  void resetNewPassword();
  void sendPasswordResetEmail();
  void verifyResetCode();
  void validateEmail();
  void logout();
}