import 'package:flutter/material.dart';
import 'package:health_state/presention/resources/routes_Manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Health State',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoutes,
      initialRoute: Routes.splashRoute,
    );
  }
}


