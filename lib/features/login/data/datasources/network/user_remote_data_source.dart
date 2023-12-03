
import 'package:login/features/login/data/datasources/network/error_message_model.dart';
import '../../../../../core/server/server.dart';
import '../../../domain/usecases/login_use_case.dart';
import '../../models/user_model.dart';
import 'package:dio/dio.dart';
import '../api_constance.dart';

abstract class BaseLoginRemoteDataSource {
  Future<UserModel> login({required UserData userData});
}

class UserRemoteDataSource extends BaseLoginRemoteDataSource {
  @override
  Future<UserModel> login({required UserData userData}) async {
    final response = await Dio().post(ApiConstance.baseUrl, data: {
      'email': userData.email,
      'password': userData.password,
    });

    if (response.statusCode == 202) {
      var data = UserModel.fromJson(response.data as Map<String, dynamic>);
      print('Data Is ${response.data}');

      return data;
    } else  {
      throw ServerExtension(
        errorMessageModel: ErrorMessageModel.fromJson(response.data),
      );
    }
  }
}
