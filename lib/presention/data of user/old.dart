import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class olduser extends StatefulWidget {
  @override
  _olduser createState() => _olduser();
}

class _olduser extends State<olduser> {
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
          Row(children: [

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