// ignore_for_file: library_private_types_in_public_api
import 'package:awesome_number_picker/awesome_number_picker.dart';
import 'package:flutter/material.dart';
import 'package:healthystate/presention/resources/color_manager.dart';
import 'package:numberpicker/numberpicker.dart';

import '../../components_tools.dart';

class hightuser extends StatefulWidget {
  const hightuser({super.key});

  @override

  _hightuser createState() => _hightuser();
}

class _hightuser extends State<hightuser> {
  // int _currentValue = 3;
  int integerValue = 20;
  double decimalValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 50,),
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon:Icon(Icons.arrow_back_ios_new_outlined),alignment: AlignmentDirectional.topStart),
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("What\'s your height  ?",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold),),
              // Text(integerValue.toString()),
            ],
          ),

          SizedBox(
            height: 400,
            // width: 100,
            child: IntegerNumberPicker(
              initialValue: 120,
              minValue: 100,
              maxValue: 200,
              onChanged: (i) => setState(() {
                integerValue = i;
              }),
            ),
          ),

          Container(child: defultButton(label: 'continue', onPressed: (){}))// Row(// Row(
        ],
      ),
    );
  }
}