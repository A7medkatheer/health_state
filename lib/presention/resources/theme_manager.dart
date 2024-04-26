import 'package:flutter/material.dart';
import 'package:health_state/presention/resources/values_manager.dart';
import 'color_manager.dart';
import 'styles_Manager.dart';
import 'fonts_manager.dart';

ThemeData getAppTheme(){
  return ThemeData(
    //main Color
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.lightPrimary,
    //card Theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),
    //app bar Theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle: getRegularStyle(FontSize: FontSize.s16,Color: ColorManager.white,)
    ),
    //button Theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary,
      splashColor:  ColorManager.lightPrimary,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(Color: ColorManager.white,FontSize: FontSize.s14), backgroundColor: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        )
      )
    ),
    //text theme
    textTheme: TextTheme(
        displayLarge: getSemiBoldStyle(
            Color: ColorManager.darkGrey, FontSize: FontSize.s16),
        headlineLarge: getSemiBoldStyle(
            Color: ColorManager.darkGrey, FontSize: FontSize.s16),
        headlineMedium: getRegularStyle(
            Color: ColorManager.darkGrey, FontSize: FontSize.s14),
        titleMedium:
        getMediumStyle(Color: ColorManager.primary, FontSize: FontSize.s16),
        titleSmall:
        getRegularStyle(Color: ColorManager.white, FontSize: FontSize.s16),
        bodyLarge: getRegularStyle(Color: ColorManager.grey1),
        bodySmall: getRegularStyle(Color: ColorManager.grey),
        bodyMedium: getRegularStyle(Color: ColorManager.grey2, FontSize: FontSize.s12),
        labelSmall:
        getBoldStyle(Color: ColorManager.primary, FontSize: FontSize.s12)),
      //textFormField
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularStyle(Color: ColorManager.grey,FontSize: FontSize.s14),
      labelStyle: getMediumStyle(Color: ColorManager.grey,FontSize: FontSize.s14),
      errorStyle: getRegularStyle(Color: ColorManager.error),

      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.grey,width: AppSize.s1_5),
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
      ),
      focusedBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
      ),
      errorBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.error,width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
      ),
      focusedErrorBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.primary,width: AppSize.s1_5),
          borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))
      ),
    ),


  );
}