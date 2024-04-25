import 'package:flutter/material.dart';
import 'package:health_state/presention/forgot_password/newpass.dart';

import '../../Components(tools).dart';
import '../resources/color_manager.dart';
import '../resources/routes_Manager.dart';

class verfy extends StatelessWidget {
  const verfy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            SizedBox(height: 150,),
            Text('Verification',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Center(child: Text('Please Enter your code sent to your email',style: TextStyle(fontSize: 18,color: Colors.grey),)),
            SizedBox(height: 30,),
            Image(image: AssetImage('assets/images/verfy.png')),
            SizedBox(height: 20,),
            // Row(
            //   children: [
            //     defultTextForm(
            //       // controller: EmailController,
            //       keyboardType: TextInputType.number,
            //       onTab: () {},
            //       ), defultTextForm(
            //       // controller: EmailController,
            //       keyboardType: TextInputType.number,
            //       onTab: () {},
            //       ), defultTextForm(
            //       // controller: EmailController,
            //       keyboardType: TextInputType.number,
            //       onTab: () {},
            //       ), defultTextForm(
            //       // controller: EmailController,
            //       keyboardType: TextInputType.number,
            //       onTab: () {},
            //       ),
            //   ],
            // ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Diden\'t get code ? ',style: TextStyle(fontSize: 15,),),
                Text('Resend ',style: TextStyle(fontSize: 15,color: ColorManager.primary),),
                //     defultButton(label: 'Send', onPressed: (){}),
              ],
            ),
            SizedBox(height: 20,),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: ColorManager.primary,
              borderRadius: BorderRadiusDirectional.circular(20)),
          child: TextButton(
              child: Text(
                'verfiy',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(context, Routes.newpassRoute);

            }),

        )],),
      ) ,
    );
  }
}
