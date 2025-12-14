
abstract class BaseAuthRepository
{
  void userLoginWithEmailAndPassword();
  void userLoginWithFacebook();
  void userLoginWithGoogle();
  void registerNewUser();
  void checkIfUserLoggedIn();
  void resetNewPassword();
  void sendPasswordResetEmail();
  void verifyResetCode();
  void validateEmail();
  void logout();
}