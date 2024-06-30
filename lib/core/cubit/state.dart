abstract class AppState{}

class AppInitial extends AppState{}

class AppChangeBottomNav extends AppState{}
class SignUpSuccess extends AppState{}
class SignUpFailure extends AppState{
  final String errMessage;
  SignUpFailure({required this.errMessage});
}
class SignUpLoading extends AppState{}

