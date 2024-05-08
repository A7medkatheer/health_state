// ignore_for_file: library_private_types_in_public_api, camel_case_types
import 'package:awesome_number_picker/awesome_number_picker.dart';
import 'package:flutter/material.dart';

import '../../components_tools.dart';

class weightuser extends StatefulWidget {
  const weightuser({super.key});

  @override

  _weightuser createState() => _weightuser();
}

class _weightuser extends State<weightuser> {
  // int _currentValue = 3;
  int integerValue = 80;
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
              const SizedBox(width: 50,),
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon:const Icon(Icons.arrow_back_ios_new_outlined)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("what's your weight ",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),),
              Text(integerValue.toString()),
            ],
          ),
          SizedBox(
            height: 400,
            child: IntegerNumberPicker(
              initialValue: 80,
              minValue: 20,
              maxValue: 200,
              onChanged: (i) => setState(() {
                integerValue = i;
              }),
            ),
          ),
          Container(child: defultButton(label: 'continue', onPressed: (){}))// Row(
// Row(
        ],
      ),
    );
  }
}