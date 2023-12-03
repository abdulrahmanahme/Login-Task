
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/features/login/presentation/widgets/default_button.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../../config/app_const.dart';
import '../../../../core/services/services_locator.dart';
import '../../../../core/utils/app_strings.dart';
import '../../domain/usecases/login_use_case.dart';
import '../manager/cubit/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.fromKey,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> fromKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => sl<LoginCubit>(),
      child: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state is LoadingState
                ? const Center(child: CircularProgressIndicator())
                : DefaultButton(
                    buttonText: AppStrings.login,
                    function: () {
                      if (fromKey.currentState!.validate()) {
                        context.read<LoginCubit>().login(
                            userData: UserData(
                              email: emailController.text,
                              password: passwordController.text,
                            ),
                            context: context);
                      }
                      var token = getStringAsync("Token");
                      print(' token ${token}');

                      print('chached token ${AppConst.token}');
                    },
                  );
          }),
    );
  }
}