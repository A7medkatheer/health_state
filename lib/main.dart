import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthystate/presention/main/screens/widgets/cubit/cubit.dart';
import 'package:healthystate/presention/resources/routes_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AppCubit(),
        child: ScreenUtilInit(
          child: MaterialApp(
            theme: ThemeData(primarySwatch: Colors.green),
            title: 'Health State',
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteGenerator.getRoutes,
            initialRoute: Routes.splashRoute,
          ),
        ));
  }
}


