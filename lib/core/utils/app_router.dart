import 'package:go_router/go_router.dart';
import 'package:pastport/authentication/presentation/screens/login_screen.dart';
import 'package:pastport/settings/presentation/screens/help%20&%20support/help_support_screen.dart';

abstract class AppRouter
{
  // static const String kSplashView = '/';
  static const String kOnBoardingView = '/';
  static const String kAuthView = '/LoginScreen';

  static GoRouter router = GoRouter(
      routes:
      [
        // GoRoute(
        //   name: kSplashView,
        //   path: kSplashView,
        //   builder: (context, state) => const SplashView(),
        // ),
        GoRoute(
          name: kAuthView,
          path: kAuthView,
          builder: (context, state) {
            return const LoginScreen();
          },
        ),
        GoRoute(
          name: kOnBoardingView,
          path: kOnBoardingView,
          builder: (context, state) => HelpSupportScreen(),
        ),
      ]
  );
}