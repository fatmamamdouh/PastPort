import 'package:dio/dio.dart';
import 'package:pastport/authentication/data/models/register_model.dart';
import 'package:pastport/core/utils/constants.dart';

abstract class BaseAuthRemoteDataSource {
  void userLoginWithEmailAndPassword();
  Future<RegisterModel> registerNewUser();
}

class AuthRemoteDataSource implements BaseAuthRemoteDataSource {
  @override
  void userLoginWithEmailAndPassword() async {
    await Dio().post(
        "${Constants.apiDomain}${Constants.LOGIN}",
        data: {
          "email" : "batta4doha@gmail.com",
          "password" : "Fatma2021*****",
        },
    ).then((value)
    {
      print(RegisterModel.fromJson(value.data));
    }).catchError((onError)
    {
      print("------------------Error happens while logging in------------------");
      print(onError.toString());
    });
  }

  @override
  Future<RegisterModel> registerNewUser() {
    // TODO: implement registerNewUser
    throw UnimplementedError();
  }
}
