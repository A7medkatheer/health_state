import 'package:flutter/material.dart';
import 'package:health_state/presention/login/login_screen.dart';
import 'package:health_state/presention/main/screens/dashboard.dart';
import 'package:health_state/presention/splash/splash_screen.dart';
import 'package:health_state/presention/start/start.dart';
import '../forgot_password/forgot_password_screen.dart';
import '../forgot_password/newpass.dart';
import '../forgot_password/verification.dart';
import '../onboarding/on_boarding_screen.dart';
import '../register/registerScreen.dart';
import '../store_details/store_details_screen.dart';
import 'strings_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String startRoute = "/start";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String onBoardingRoute = "/onBoarding";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String verfyRoute = "/verfy";
  static const String newpassRoute = "/newpass";
  static const String storeRoute = "/store";
}

class RouteGenerator {
  static Route<dynamic> getRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.startRoute:
        return MaterialPageRoute(builder: (_) => const StartView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.verfyRoute:
        return MaterialPageRoute(builder: (_) => const Verfy());
      case Routes.newpassRoute:
        return MaterialPageRoute(builder: (_) => const Newpass());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const registerView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.storeRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(
                child: Text(AppStrings.noRouteFound),
              ),
            ));
  }
}
