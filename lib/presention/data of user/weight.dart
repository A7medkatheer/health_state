// // ignore_for_file: library_private_types_in_public_api, camel_case_types
// import 'package:awesome_number_picker/awesome_number_picker.dart';
// import 'package:flutter/material.dart';

// import '../../components_tools.dart';

// class weightuser extends StatefulWidget {
//   const weightuser({super.key});

//   @override

//   _weightuser createState() => _weightuser();
// }

// class _weightuser extends State<weightuser> {
//   // int _currentValue = 3;
//   int integerValue = 80;
//   double decimalValue = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       body:
//       Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               const SizedBox(width: 50,),
//               IconButton(onPressed: (){
//                 Navigator.pop(context);
//               }, icon:const Icon(Icons.arrow_back_ios_new_outlined)),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const Text("what's your weight ",style: TextStyle(fontSize:30,fontWeight: FontWeight.bold),),
//               Text(integerValue.toString()),
//             ],
//           ),
//           SizedBox(
//             height: 400,
//             child: IntegerNumberPicker(
//               initialValue: 80,
//               minValue: 20,
//               maxValue: 200,
//               onChanged: (i) => setState(() {
//                 integerValue = i;
//               }),
//             ),
//           ),
//           Container(child: defultButton(label: 'continue', onPressed: (){}))// Row(
// // Row(
//         ],
//       ),
//     );
//   }
// }
import 'package:animated_weight_picker/animated_weight_picker.dart';
import 'package:flutter/material.dart';
import 'package:healthystate/presention/resources/routes_manager.dart';

import '../resources/color_manager.dart';

class WeightUser extends StatefulWidget {
  const WeightUser({super.key});

  @override
  State<WeightUser> createState() => _WeightUserState();
}

class _WeightUserState extends State<WeightUser> {
  final double min = 0;
  final double max = 150;
  String selectedValue = '';

  @override
  void initState() {
    selectedValue = min.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.primary,
        title: const Text('Animated Weight Picker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 500,
              child: AnimatedWeightPicker(
                min: 50,
                max: 150,
                onChange: (newValue) {
                  setState(() {
                    selectedValue = newValue;
                  });
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Text(
          //   'Selected Value: $selectedValue',
          //   style: const TextStyle(fontSize: 20),
          // ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.OlduserRoute);
            },
            child:  Text('Continue',style: TextStyle(color:ColorManager.primary,)),
          ),
        ],
      ),
    );
  }
}



