import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:health_state/presention/resources/Constant.dart';
import 'package:health_state/presention/resources/assets_Manager.dart';
import 'package:health_state/presention/resources/color_manager.dart';
import 'package:health_state/presention/resources/routes_Manager.dart';

class splashView extends StatefulWidget {
  const splashView({super.key});

  @override
  State<splashView> createState() => _splashViewState();
}

class _splashViewState extends State<splashView> {
  Timer? _timer ;
  _startDelay(){
    _timer=Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }
  _goNext(){
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }
  @override
  void initState() {
    super.initState();
    _startDelay();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:ColorManager.white,
        // SvgPicture.asset( ImagesAssets.SplashLogo,)
        // Image(image: AssetImage(ImagesAssets.SplashLogo2))
      body: Container(decoration: BoxDecoration(gradient: LinearGradient(
        colors: [Colors.white38, Colors.grey,]),),
        child: Center(child:Image(image: AssetImage(ImagesAssets.SplashLogo2)),
    ),
      ));
  }
  @override
  void dispose() {
 _timer?.cancel();
    super.dispose();
  }
}
