// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class Olduser extends StatefulWidget {
  const Olduser({super.key});

  @override

  _Olduser createState() => _Olduser();
}

class _Olduser extends State<Olduser> {
  int _currentValue = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: <Widget>[
          const Row(children: [

          ],),
          NumberPicker(
            value: _currentValue,
            minValue: 0,
            maxValue: 100,
            onChanged: (value) => setState(() => _currentValue = value),
          ),
          Text('Current value: $_currentValue'),
        ],
      ),
    );
  }
}