import 'package:equatable/equatable.dart';

class User extends Equatable {
  String accessToken;
  String tokenType;
  User({required this.accessToken, required this.tokenType });

  @override
  List<Object?> get props => [ accessToken ,tokenType];
}