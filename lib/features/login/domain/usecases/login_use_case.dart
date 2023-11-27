
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/use_case.dart';
import '../entities/user_entite.dart';
import '../repositories/base_user_repositories.dart';


class LoginUseCase  extends BaseUseCase<User,UserData>{
 final BaseUserRepository baseUserRepository;
 LoginUseCase(this.baseUserRepository);
  @override
  Future<Either<Failure,User>> call(UserData userData)async{
    return await baseUserRepository.login(email: userData.email!, password:userData.password!);
   }
} 
class UserData extends Equatable{
 final String ?email;
 final String? password;

 const UserData({this.email,this.password});
  
  @override
  List<Object?> get props =>[email,password];

}