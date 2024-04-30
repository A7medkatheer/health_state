import 'package:bloc/bloc.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';

import '../exercises.dart';
import '../home_page.dart';
import '../pages.dart';
import 'state.dart';


class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);
  final List<Widget> pages = [
    const HomePage(),
    const exercisespage(),
    const ChatPage(),
    const ProfilePage(),
  ];
  int currentPage = 1;

  void ChangeBottomNav(index) {
    currentPage = index;
    emit(AppChangeBottomNav());
  }

  dynamic BottomNav() =>
      CurvedNavigationBar(
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.green,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          items: const [
            CurvedNavigationBarItem(
              child: Icon(CupertinoIcons.home),
              label: 'Home',
            ), CurvedNavigationBarItem(
              child: Icon(Iconsax.activity4),
              label: 'exercises',
            ), CurvedNavigationBarItem(
              child: Icon(CupertinoIcons.chart_bar_circle),
              label: 'Diet',
            ),
            CurvedNavigationBarItem(
              child: Icon(CupertinoIcons.settings),
              label: 'Settings',
            ),
          ],
          index: currentPage,
          onTap: (index) {
            currentPage = index;
            emit(AppChangeBottomNav());
          });
}