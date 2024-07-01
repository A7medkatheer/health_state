import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: unused_import
import 'package:healthystate/cache_helper.dart';
import 'package:healthystate/core/api/api_consumer.dart';
import 'package:healthystate/core/api/end_ponits.dart';
import 'package:healthystate/core/errors/exceptions.dart';
import 'package:healthystate/core/models/sign_in_model.dart';
import 'package:healthystate/presention/main/screens/diets/food_list_view.dart';
import 'package:healthystate/presention/main/screens/diets/food_model.dart';
import 'package:healthystate/presention/main/screens/diets/widgets/model_diets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../../presention/main/screens/widgets/exercises.dart';
import '../../presention/main/screens/widgets/home_page.dart';
import '../../presention/main/screens/widgets/pages.dart';
import '../../presention/main/screens/widgets/profilePage.dart';
import 'state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit(this.api) : super(AppInitial());
  final ApiConsumer api;
  SignInModel? user;

  int index = 0;
  String gender = '';
  int hight = 0;
  String weight = "";
  int old = 0;

  AppCubit get(context) => BlocProvider.of(context);

  int currentPage = 0;

  void changeBottomNav(int index) {
    currentPage = index;
    emit(AppChangeBottomNav());
  }

  List<Widget> getPages(BuildContext context) => [
        HomePage(
          diet: diet[context.read<AppCubit>().index],
        ),
        const Exercisespage(),
        const DietsPage(),
        // const FoodListView(
        //   foodList: [],
        // ),
      ];

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
            label: 'Exercises',
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
        },
      );

  signUp(
      {required String name,
      required String email,
      required String password,
      required String confirmPassword}) async {
    try {
      emit(SignUpLoading());
      final response = await api.post(
        EndPoint.signUp,
        data: {
          ApiKey.name: name,
          ApiKey.email: email,
          ApiKey.password: password,
          ApiKey.confirmPassword: confirmPassword,
        },
      );
      emit(SignUpSuccess());
      print(response);
    } on ServerException catch (e) {
      emit(SignInFailure(errMessage: e.errModel.errorMessage));
    }
  }

  signIn({required String email, required String password}) async {
    try {
      emit(SignInLoading());
      final response = await api.post(
        EndPoint.signIn,
        data: {
          ApiKey.email: email,
          ApiKey.password: password,
        },
      );
      user = SignInModel.fromJson(response);
      final decodedToken = JwtDecoder.decode(user!.token);
      CacheHelper().saveData(key: ApiKey.token, value: user!.token);
      CacheHelper()
          .saveData(key: ApiKey.userId, value: decodedToken[ApiKey.userId]);
      print(decodedToken[ApiKey.userId]);

      emit(SignInSuccess());
    } on ServerException catch (e) {
      emit(SignInFailure(errMessage: e.errModel.errorMessage));
    }
  }

  getFood() async {
    try {
      final response = await api.get(
        EndPoint.categories,
      );
      final getData = FoodModel.fromJson(response);
      print(getData);

      // CacheHelper().saveData(key: ApiKey.nameFood, value: getData.nameFood);
      // CacheHelper().saveData(key: ApiKey.iconFood, value: getData.iconFood);
      // CacheHelper().saveData(key: ApiKey.fatFood, value: getData.fatFood);
      // CacheHelper().saveData(key: ApiKey.fatFood, value: getData.carbFood);
      // CacheHelper().saveData(key: ApiKey.proteinFood, value: getData.proteinFood);
      // CacheHelper().saveData(key: ApiKey.calsFood, value: getData.calsFood);

      // print("${getData.name} ${getData.email} ${getData.profilePic}");
      emit(GetFoodSuccess(foodList: [getData]));
    } on ServerException catch (e) {
      emit(GetFoodFailure(errMessage: e.errModel.errorMessage));
    }
  }
}
