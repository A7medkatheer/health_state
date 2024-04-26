// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_state/presention/resources/values_manager.dart';

import '../../Components(tools).dart';
import '../resources/assets_Manager.dart';
import '../resources/color_manager.dart';
import '../resources/routes_Manager.dart';
import '../resources/strings_Manager.dart';


class registerView extends StatelessWidget {
  const registerView({super.key});

  @override
  Widget build(BuildContext context) {
    var NameController = TextEditingController();
    var EmailController = TextEditingController();
    var PasswordController = TextEditingController();
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSize.s20),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: AppSize.s50,
                ),
                Image(image: AssetImage(ImagesAssets.Logo)),
                SizedBox(
                  height: AppSize.s60,
                ),defultTextForm(
                  controller: NameController,
                  keyboardType: TextInputType.name,
                  prefixIcon: Icon(Icons.person),
                  label: 'Enter full name ',
                  onTab: () {},
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return 'please Enter your name ';
                    }
                  },
                ),
                SizedBox(height: 30,),
                defultTextForm(
                  controller: EmailController,
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: Icon(Icons.mail),
                  label: 'Enter E-mail or Phone Number',
                  onTab: () {},
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return 'please Enter your email ';
                    }
                  },
                ),
                SizedBox(height: 30,),
                defultTextForm(
                  showpassword: true,
                  controller: PasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  prefixIcon: Icon(Icons.lock),
                  label: 'Enter Your Password',
                  onTab: () {},
                  validate: (String? value) {
                    if (value!.isEmpty) {
                      return 'please Enter your password ';
                    }
                  },
                ),
                SizedBox(
                  height: 15,
                ),

                SizedBox(
                  height: 20,
                ),
                defultButton(label: 'REGISTER', onPressed: () {}),
                SizedBox(
                  height: 30,
                ),
                TextButton(child:Text(
                  AppStrings.forgotPassword,
                  style: TextStyle(
                      color: ColorManager.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),onPressed: (){                        Navigator.pushReplacementNamed(context,Routes.forgotPasswordRoute);
                },),
                Spacer(),
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
                SizedBox(
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
                              icon: FaIcon(
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
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Have an account?'),
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
