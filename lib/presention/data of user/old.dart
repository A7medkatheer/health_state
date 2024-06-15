// ignore_for_file: library_private_types_in_public_api
import 'package:awesome_number_picker/awesome_number_picker.dart';
import 'package:flutter/material.dart';
import 'package:healthystate/components_tools.dart';

class Olduser extends StatefulWidget {
  const Olduser({super.key});

  @override
  _Olduser createState() => _Olduser();
}

class _Olduser extends State<Olduser> {
  // int _currentValue = 3;
  int integerValue = 20;
  double decimalValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "How old Are you ?",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              // Text(integerValue.toString()),
            ],
          ),
          SizedBox(
            height: 400,
            child: IntegerNumberPicker(
              initialValue: 20,
              minValue: 1,
              maxValue: 90,
              onChanged: (i) => setState(() {
                integerValue = i;
              }),
            ),
          ),
          Container(
              child: defultButton(label: 'continue', onPressed: () {})) // Row(
        ],
      ),
    );
  }
}
