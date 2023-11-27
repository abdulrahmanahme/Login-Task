import 'package:dartz/dartz.dart';
import 'package:login/core/error/failure.dart';
import 'package:login/features/login/domain/entities/user_entite.dart';
import 'package:login/features/login/domain/usecases/login_use_case.dart';
import '../../../../core/server/server.dart';
import '../../domain/repositories/base_user_repositories.dart';
import '../datasources/network/user_remote_data_source.dart';

class UserRepertory extends BaseUserRepository {
  BaseLoginRemoteDataSource baseLoginRemoteDataSource;
  UserRepertory(this.baseLoginRemoteDataSource);
  @override
  Future<Either<Failure, User>> login({required String email, required String password}) async {
    final result = await baseLoginRemoteDataSource.login(userData: UserData(email: email,password: password));
    try {
      return right(result);
    } on ServerExtension catch (failure) {
      return left(
          ServerFailure(message: failure.errorMessageModel.statusMessage));
    }
  }
}
