import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entities/user_entite.dart';
import '../usecases/login_use_case.dart';

abstract class BaseUserRepository{
  Future<Either<Failure,User>>login({required String email, required String password});

}