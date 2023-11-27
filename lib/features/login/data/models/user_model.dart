import '../../domain/entities/user_entite.dart';

class UserModel  extends User{

   UserModel({required super.accessToken,required super.tokenType});

 factory UserModel.fromJson(Map<String, dynamic> json) =>UserModel (
    accessToken: json['access_token'],
    tokenType:json['token_type'],
  );

}
