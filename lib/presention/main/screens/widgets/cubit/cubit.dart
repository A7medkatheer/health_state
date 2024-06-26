import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:healthystate/cache_helper.dart';
import 'package:healthystate/presention/main/screens/diets/widgets/model_diets.dart';
import 'package:iconsax/iconsax.dart';

import '../exercises.dart';
import '../home_page.dart';
import '../pages.dart';
import '../profilePage.dart';
import 'state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  int index = 0;
  AppCubit get(context) => BlocProvider.of(context);
  List<Widget> pages = [
    HomePage(
      diet: diet[CacheHelper().getData(key: "index") ?? 0],
      // context.read<AppCubit>().index
      // index: CacheHelper().getData(key: "index"),
    ),
    const Exercisespage(),
    const DietsPage(),
    const ProfilePage(),
  ];
  int currentPage = 0;

  void changeBottomNav(int index) {
    currentPage = index;
    emit(AppChangeBottomNav());

    // Rebuild HomePage with the new index
  }

  dynamic bottomNav() => CurvedNavigationBar(
      color: Colors.white,
      buttonBackgroundColor: Colors.white,
      backgroundColor: Colors.green,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 600),
      items: const [
        CurvedNavigationBarItem(
          child: Icon(CupertinoIcons.home),
          label: 'Home',
        ),
        CurvedNavigationBarItem(
          child: Icon(Iconsax.activity4),
          label: 'exercises',
        ),
        CurvedNavigationBarItem(
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
