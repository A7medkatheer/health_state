// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:healthystate/presention/login/login_screen.dart';
import 'package:healthystate/presention/main/screens/dashboard.dart';
import 'package:healthystate/presention/splash/splash_screen.dart';
import 'package:healthystate/presention/start/start.dart';
import '../data of user/gender.dart';
import '../data of user/hight.dart';
import '../data of user/old.dart';
import '../data of user/weight.dart';
import '../forgot_password/forgot_password_screen.dart';
import '../forgot_password/newpass.dart';
import '../forgot_password/verification.dart';
import '../main/screens/widgets/ex_private.dart';
import '../main/screens/widgets/exercises.dart';
import '../main/screens/widgets/item_ex.dart';
import '../main/screens/widgets/pages.dart';
import '../onboarding/on_boarding_screen.dart';
import '../register/registerScreen.dart';
import '../store_details/store_details_screen.dart';
import 'strings_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String ListOfFood = "sdvvvvvvzx";
  static const String startDiets = "/sdgvsdv";
  static const String startRoute = "/start";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String OlduserRoute = "/Olduser";
  static const String GenderSelectionScreenRoute = "/GenderSelectionScreen";
  static const String weightuserRoute = "/weightuser";
  static const String hightuserRoute = "/hightuser";
  // static const String itemExRoute = "/itemEx";
  static const String onBoardingRoute = "/onBoarding";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String exercisespageRoute = "/exercisespage";
  static const String exPrivateRoute = "/exPrivate";
  static const String verfyRoute = "/verfy";
  static const String newpassRoute = "/newpass";
  static const String storeRoute = "/store";
}

class RouteGenerator {
  static Route<dynamic> getRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
        case Routes.GenderSelectionScreenRoute:
        return MaterialPageRoute(builder: (_) => const GenderSelectionScreen());
      case Routes.ListOfFood:
        return MaterialPageRoute(builder: (_) => const ListOfFood());
      case Routes.startDiets:
        return MaterialPageRoute(
            builder: (_) => StartDiet(diet: settings.arguments as Diets));
      case Routes.startRoute:
        return MaterialPageRoute(builder: (_) => const StartView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.OlduserRoute:
        return MaterialPageRoute(builder: (_) => const Olduser());
      case Routes.weightuserRoute:
        return MaterialPageRoute(builder: (_) => const WeightUser());
      // case Routes.itemExRoute:
      //   return MaterialPageRoute(builder: (_) => const ItemEx());
      case Routes.hightuserRoute:
        return MaterialPageRoute(builder: (_) => const hightuser());
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
      case Routes.exercisespageRoute:
        return MaterialPageRoute(builder: (_) => const Exercisespage());
      case Routes.exPrivateRoute:
        return MaterialPageRoute(builder: (_) => const ExPrivate());
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
