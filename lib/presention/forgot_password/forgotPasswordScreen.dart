import 'package:flutter/material.dart';
import 'package:health_state/presention/forgot_password/verification.dart';
import 'package:health_state/presention/resources/color_manager.dart';
import 'package:health_state/presention/resources/routes_Manager.dart';

import '../../Components(tools).dart';

class forgotPasswordView extends StatelessWidget {
  forgotPasswordView({super.key});
  var EmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Forgot Your Password ?',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Text(
                'Enter your registered email below to receive password reset instruction',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              )),
              Image(image: AssetImage('assets/images/forgotpassword.png')),
              SizedBox(
                height: 20,
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
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Remember password ? ',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    'Login ',
                    style: TextStyle(fontSize: 15, color: ColorManager.primary),
                  ),
                  //     defultButton(label: 'Send', onPressed: (){}),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: ColorManager.primary,
                    borderRadius: BorderRadiusDirectional.circular(20)),
                child: TextButton(
                    child: Text(
                      'send',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.verfyRoute);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
