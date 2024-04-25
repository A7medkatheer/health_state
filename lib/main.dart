import 'package:flutter/material.dart';
import 'package:health_state/presention/resources/color_manager.dart';
import 'package:health_state/presention/resources/routes_Manager.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch:Colors.green
      ),
      title: 'Health State',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoutes,
      initialRoute: Routes.splashRoute,
       );
  }
}


