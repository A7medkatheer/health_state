import 'dart:async';
import 'package:flutter/material.dart';
import 'package:health_state/presention/resources/Constant.dart';
import 'package:health_state/presention/resources/assets_Manager.dart';
import 'package:health_state/presention/resources/color_manager.dart';
import 'package:health_state/presention/resources/routes_Manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  _startDelay() {
    _timer = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.white,
        // SvgPicture.asset( ImagesAssets.SplashLogo,)
        // Image(image: AssetImage(ImagesAssets.SplashLogo2))
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white38,
              Colors.grey,
            ]),
          ),
          child: const Center(
            child: Image(image: AssetImage(ImagesAssets.SplashLogo2)),
          ),
        ));
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
