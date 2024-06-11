// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthystate/presention/resources/values_manager.dart';

import '../../components_tools.dart';
import '../resources/assets_manager.dart';
import '../resources/color_manager.dart';
import '../resources/routes_manager.dart';
import '../resources/strings_manager.dart';


class registerView extends StatelessWidget {
  const registerView({super.key});

  @override
  Widget build(BuildContext context) {
    var NameController = TextEditingController();
    var EmailController = TextEditingController();
    var PasswordController = TextEditingController();
    return Scaffold(
      backgroundColor: ColorManager.white,
      // appBar: AppBar(
      //   systemOverlayStyle: const SystemUiOverlayStyle(
      //     statusBarColor: Colors.transparent,
      //     statusBarBrightness: Brightness.dark,
      //   ),
      //   backgroundColor: ColorManager.white,
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.s20),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: AppSize.s50,
                ),
                const Image(image: AssetImage(ImagesAssets.Logo)),
                const SizedBox(
                  height: AppSize.s60,
                ),defultTextForm(
                  controller: NameController,
                  keyboardType: TextInputType.name,
                  prefixIcon: const Icon(Icons.person),
                  label: 'Enter full name ',
                  onTab: () {},
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return 'please Enter your name ';
                    }
                  },
                ),
                const SizedBox(height: 30,),
                defultTextForm(
                  controller: EmailController,
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: const Icon(Icons.mail),
                  label: 'Enter E-mail or Phone Number',
                  onTab: () {},
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return 'please Enter your email ';
                    }
                  },
                ),
                const SizedBox(height: 30,),
                defultTextForm(
                  showpassword: true,
                  controller: PasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  prefixIcon: const Icon(Icons.lock),
                  label: 'Enter Your Password',
                  onTab: () {},
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return 'please Enter your password ';
                    }
                  },
                ),
                const SizedBox(
                  height: 15,
                ),

                const SizedBox(
                  height: 20,
                ),
                defultButton(label: 'REGISTER', onPressed: () {}),
                const SizedBox(
                  height: 30,
                ),
                TextButton(child:Text(
                  AppStrings.forgotPassword,
                  style: TextStyle(
                      color: ColorManager.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),onPressed: (){  Navigator.pushReplacementNamed(context,Routes.forgotPasswordRoute);
                },),
                // const Spacer(),
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(.5),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              icon: FaIcon(
                                FontAwesomeIcons.facebook,
                                color: ColorManager.blue,
                                size: 30,
                              ),
                              onPressed: () {}),
                          Text(
                            'log in with facebook',
                            style:
                            TextStyle(color: ColorManager.blue, fontSize: 20),
                          ),
                        ])),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(.5),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              icon: const FaIcon(
                                FontAwesomeIcons.google,
                                color: Colors.red,
                                size: 30,
                              ),
                              onPressed: () {}),
                          Text(
                            'log in with google',
                            style: TextStyle(
                                color: ColorManager.black, fontSize: 20),
                          ),
                        ])),
                // const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Have an account?'),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context,Routes.loginRoute);
                        },
                        child: Text(
                          'LOG IN',
                          style: TextStyle(color: ColorManager.primary),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
