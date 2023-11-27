import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login/features/login/presentation/pages/home_page.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../../../config/app_routes.dart';
import '../../../../../core/toast/toast.dart';
import '../../../domain/usecases/login_use_case.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;

  LoginCubit({required this.loginUseCase}) : super(LoginInitial());

  void login({required UserData userData, required context}) async {
    emit(LoadingState());
    final result = await loginUseCase(
        UserData(email: userData.email, password: userData.password));
    result.fold((l) {
      AppToast.errorBar(message: 'Please Try Again');
      emit(ErrorState());
    }, (r) async {
      Navigator.pushNamed(
        context,
        AppRoutes.homePage,
      );
      print('Error ${r}');
      var cacheToken = await setValue("Token", r.accessToken);
      print('Token is${cacheToken}');
      AppToast.successBar(message: 'Login successfully');

      emit(SuccessState());
    });
  }
}
