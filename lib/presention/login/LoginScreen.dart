import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_state/presention/resources/color_manager.dart';
import 'package:health_state/presention/resources/routes_Manager.dart';
import 'package:health_state/presention/resources/strings_Manager.dart';
import '../../Components(tools).dart';
import '../resources/assets_Manager.dart';
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
              Image(image: AssetImage(ImagesAssets.Logo)),
              SizedBox(
                height: AppSize.s60,
              ),
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
              defultButton(label: 'LOGIN', onPressed: () {}),
              SizedBox(
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
              Spacer(),
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
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                  decoration: BoxDecoration(
                    border: Border.symmetric(vertical: BorderSide(color: Colors.black,),horizontal:BorderSide(color:  Colors.black,)  ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/googleicon.jpeg',width: 30),
                        SizedBox(width: 15,),
                        Text(
                          'log in with google',
                          style: TextStyle(
                              color: ColorManager.black, fontSize: 22),
                        ),
                      ])),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont\' have an account?'),
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
