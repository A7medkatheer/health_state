// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthystate/presention/resources/color_manager.dart';
import 'package:healthystate/presention/resources/routes_manager.dart';
import 'package:healthystate/presention/resources/strings_manager.dart';
import '../../components_tools.dart';
import '../resources/assets_manager.dart';
import '../resources/values_manager.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    var EmailController = TextEditingController();
    var PasswordController = TextEditingController();
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
              const Image(image: AssetImage(ImagesAssets.Logo)),
              const SizedBox(
                height: AppSize.s60,
              ),
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
              defultButton(label: 'LOGIN', onPressed: () {}),
              const SizedBox(
                height: 30,
              ),
              TextButton(child:Text(
                AppStrings.forgotPassword,
                style: TextStyle(
                    color: ColorManager.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),onPressed: (){Navigator.pushReplacementNamed(context,Routes.forgotPasswordRoute);
              },),
              const Spacer(),
              Container(
                  decoration: BoxDecoration(

                    border: const Border.symmetric(vertical: BorderSide(color: Colors.blue,),horizontal:BorderSide(color: Colors.blue,) ),
                    borderRadius: BorderRadius.circular(30),
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
                height: 50,
                  decoration: BoxDecoration(
                    border: const Border.symmetric(vertical: BorderSide(color: Colors.black,),horizontal:BorderSide(color:  Colors.black,)  ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/googleicon.jpeg',width: 30),
                        const SizedBox(width: 15,),
                        Text(
                          'log in with google',
                          style: TextStyle(
                              color: ColorManager.black, fontSize: 22),
                        ),
                      ])),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Dont\' have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed((context), Routes.registerRoute);
                      },
                      child: Text(
                        'REGISTER',
                        style: TextStyle(color: ColorManager.primary),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
