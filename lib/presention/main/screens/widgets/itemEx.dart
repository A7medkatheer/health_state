import 'package:flutter/material.dart';
import 'package:healthystate/presention/resources/color_manager.dart';
import 'package:lottie/lottie.dart';

class itemEx extends StatelessWidget {
  const itemEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          children: [
            Lottie.asset('assets/images/lottie1.json',fit:BoxFit.fill),
            Text('ISTRUTIONS',style: TextStyle(color: ColorManager.primary,fontWeight: FontWeight.w500,fontSize: 30,),),
            SizedBox(height: 10,),
            Text('Classification of straightness in the place designated for exercise in f'
                'ause a change about 45 times divided into 3 consecutive sets.',
              style: TextStyle(color: ColorManager.black,fontWeight: FontWeight.w500,fontSize: 10),),
          ],
        ),
      ),
    );
  }
}
