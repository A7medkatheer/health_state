
import 'package:flutter/material.dart';
import 'package:health_state/presention/login/LoginScreen.dart';
import 'package:health_state/presention/splash/splashScreen.dart';
import 'package:health_state/presention/start/start.dart';
import '../forgot_password/forgotPasswordScreen.dart';
import '../main/main_Screen.dart';
import '../onboarding/OnBoardingScreen.dart';
import '../register/registerScreen.dart';
import '../store_details/store_details_screen.dart';
import 'strings_Manager.dart';


class Routes{
  static const String splashRoute ="/";
  static const String startRoute ="/start";
  static const String loginRoute ="/login";
  static const String registerRoute ="/register";
  static const String onBoardingRoute ="/onBoarding";
  static const String forgotPasswordRoute ="/forgotPassword";
  static const String mainRoute ="/main";
  static const String storeRoute ="/store";
}
class RouteGenerator{
  static Route <dynamic> getRoutes (RouteSettings settings){
    switch (settings.name){
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_)=>const splashView());
      case Routes.startRoute:
        return MaterialPageRoute(builder: (_)=>const startView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_)=>const LoginView());
        case Routes.onBoardingRoute:
      return MaterialPageRoute(builder: (_)=>const OnBoardingView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_)=>const registerView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_)=>const forgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_)=>const mainView());
      case Routes.storeRoute:
        return MaterialPageRoute(builder: (_)=>const storeDetailsView());
      default:
    return unDefinedRoute();
    }
  }

  static Route<dynamic>unDefinedRoute(){
      return MaterialPageRoute(builder: (_)=>Scaffold(appBar: AppBar(title: const Text(AppStrings.noRouteFound),),
        body: const Center(child: Text(AppStrings.noRouteFound),),));
    }
}