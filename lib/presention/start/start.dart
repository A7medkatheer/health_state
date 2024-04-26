import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_state/presention/resources/assets_manager.dart';
import 'package:health_state/presention/resources/color_manager.dart';
import 'package:health_state/presention/resources/fonts_manager.dart';
import 'package:health_state/presention/resources/routes_manager.dart';
import 'package:health_state/presention/resources/strings_manager.dart';
import 'package:health_state/presention/resources/values_manager.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
        ),
        backgroundColor: ColorManager.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.s20),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: AppSize.s50,
              ),
              const Image(image: AssetImage(ImagesAssets.SplashLogo2)),
              const SizedBox(
                height: AppSize.s50,
              ),
              Text(
                AppStrings.startpage,
                style: TextStyle(
                    color: ColorManager.black,
                    fontWeight: FontWeight.bold,
                    fontSize: FontSize.s30),
              ),
              const SizedBox(
                height: AppSize.s8,
              ),
              Text(
                AppStrings.startpage2,
                style: TextStyle(
                    color: ColorManager.darkGrey,
                    fontWeight: FontWeight.w300,
                    fontSize: FontSize.s20),
              ),
              const SizedBox(
                height: AppSize.s50,
              ),
              Container(
                height: AppSize.s50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorManager.black,
                    borderRadius: BorderRadius.circular(AppSize.s50)),
                child: TextButton(
                    child: Text(
                      AppStrings.getStart,
                      style: TextStyle(
                        color: ColorManager.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.mainRoute);
                    }),
              ),
              const SizedBox(
                height: AppSize.s20,
              ),
              Container(
                height: AppSize.s50,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: ColorManager.black),
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(
                      AppSize.s50,
                    ),
                    shape: BoxShape.rectangle),
                child: TextButton(
                    child: Text(
                      AppStrings.login,
                      style: TextStyle(
                        color: ColorManager.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.loginRoute);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
