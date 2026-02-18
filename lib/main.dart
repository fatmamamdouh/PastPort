import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pastport/authentication/data/data_source/remote_data_source.dart';
import 'package:pastport/authentication/data/repository/auth_repo.dart';
import 'package:pastport/authentication/domain/repository/base_auth_repo.dart';
import 'package:pastport/authentication/domain/usecases/user_login_with_email_and_password_usecase.dart';
import 'package:pastport/core/utils/app_colors.dart';
import 'package:pastport/core/utils/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BaseAuthRemoteDataSource baseAuthRemoteDataSource = AuthRemoteDataSource();
  BaseAuthRepository baseAuthRepository = AuthRepository(baseAuthRemoteDataSource);
  UserLoginWithEmailAndPassword(baseAuthRepository).execute();
  runApp(
      ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return const MyApp();
          },
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.whiteColor,
      ),
      debugShowCheckedModeBanner: false,
      title: 'PastPort',
      routerConfig: AppRouter.router,
    );
  }
}
