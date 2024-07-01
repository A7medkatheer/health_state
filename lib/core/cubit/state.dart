abstract class AppState{}

class AppInitial extends AppState{}

class AppChangeBottomNav extends AppState{}
class SignUpSuccess extends AppState{}
class SignInSuccess extends AppState{}
class SignUpFailure extends AppState{
  final String errMessage;
  SignUpFailure({required this.errMessage});
}
class GetFoodSuccess extends AppState{
  final List<dynamic> foodList;
  GetFoodSuccess({required this.foodList});
}
class GetFoodFailure extends AppState{
  final String errMessage;
  GetFoodFailure({required this.errMessage});
}
class SignInFailure extends AppState{
  final String errMessage;
  SignInFailure({required this.errMessage});
}
class SignUpLoading extends AppState{}
class SignInLoading extends AppState{}

