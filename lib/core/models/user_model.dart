import 'package:healthystate/core/api/end_ponits.dart';

class UserModel {
  final String? profilePic;
  final String email;
  final String name;
  final bool ispayment;
  final String plane;

  UserModel({
    required this.plane,
    required this.ispayment,
    this.profilePic,
    required this.email,
    required this.name,
  });

  factory UserModel.fromJson(Map<String, dynamic> jsonData) {
    return UserModel(
      profilePic: jsonData[ApiKey.profilePic] ??
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCHU5JIkqfD2z1KMc4c1nW4zdArnxBM3cCcQ&s',
      email: jsonData[ApiKey.email],
      name: jsonData[ApiKey.name],
      ispayment: jsonData['ispayment'],
      plane: jsonData['plane'],
    );
  }
}
