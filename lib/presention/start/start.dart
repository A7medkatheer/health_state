import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_state/presention/resources/assets_Manager.dart';
import 'package:health_state/presention/resources/color_manager.dart';
import 'package:health_state/presention/resources/fonts_manager.dart';
import 'package:health_state/presention/resources/routes_Manager.dart';
import 'package:health_state/presention/resources/strings_Manager.dart';
import 'package:health_state/presention/resources/values_Manager.dart';

class startView extends StatelessWidget {
  const startView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
        ),
        backgroundColor: ColorManager.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSize.s20),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: AppSize.s50,
              ),
              Image(image: AssetImage(ImagesAssets.SplashLogo2)),
              SizedBox(
                height: AppSize.s50,
              ),
              Text(
                AppStrings.startpage,
                style: TextStyle(
                    color: ColorManager.black,
                    fontWeight: FontWeight.bold,
                    fontSize: FontSize.s30),
              ),
              SizedBox(
                height: AppSize.s8,
              ),
              Text(
                AppStrings.startpage2,
                style: TextStyle(
                    color: ColorManager.darkGrey,
                    fontWeight: FontWeight.w300,
                    fontSize: FontSize.s20),
              ),
              SizedBox(
                height: AppSize.s50,
              ),
              Container(
                height: AppSize.s50,
                width: double.infinity,
                child: TextButton(
                    child: Text(
                      AppStrings.getStart,
                      style: TextStyle(
                        color: ColorManager.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context,Routes.mainRoute);
                    }),
                decoration: BoxDecoration(
                    color: ColorManager.black,
                    borderRadius: BorderRadius.circular(AppSize.s50)),
              ),
              SizedBox(
                height: AppSize.s20,
              ),
              Container(
                height: AppSize.s50,
                width: double.infinity,
                child: TextButton(
                    child: Text(
                      AppStrings.login,
                      style: TextStyle(
                        color: ColorManager.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context,Routes.loginRoute);
                    }),
                decoration: BoxDecoration(
                    border: Border.all(color: ColorManager.black),
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(
                      AppSize.s50,
                    ),
                    shape: BoxShape.rectangle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
