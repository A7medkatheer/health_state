// ignore_for_file: library_private_types_in_public_api, camel_case_types

import 'package:awesome_number_picker/awesome_number_picker.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                width: 50,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios_new_outlined),
                  alignment: AlignmentDirectional.topStart),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "What\'s your height  ?",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
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

          Container(
              child: defultButton(
                  label: 'continue', onPressed: () {})) // Row(// Row(
        ],
      ),
    );
  }
}
