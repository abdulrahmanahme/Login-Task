import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/core/utils/app_strings.dart';
import '../../../../config/app_text_styles.dart';
import '../../../../config/image_resources.dart';
import '../widgets/default_button.dart';
import '../widgets/email_field.dart';
import '../widgets/forget_password_widget.dart';
import '../widgets/password_field.dart';
import '../widgets/rich_text_widget.dart';
import '../widgets/social_media_login_group.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageResources.loginBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: ListView(
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Column(
                  children: [
                    Center(
                      child: Text(
                        AppStrings.welcomeBack,
                        style: AppTextStyle.font23black400,
                      ),
                    ),
                    Center(
                        child: Text(AppStrings.loginToContinue,
                            style: AppTextStyle.font16Black400)),
                    SizedBox(
                      height: 30.h,
                    ),
                    const EmailField(),
                    SizedBox(
                      height: 20.h,
                    ),
                    const PasswordField(),
                    SizedBox(
                      height: 10.h,
                    ),
                   const ForgetPassWordWidget(),
                    SizedBox(
                      height: 30.h,
                    ),
                    DefaultButton(
                        buttonText: AppStrings.login,
                        function: () {},
                      ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(AppStrings.or, style: AppTextStyle.font14Black500),
                    SizedBox(
                      height: 10.h,
                    ),
                    const SocialMediaLoginGroup(),
                    RichTextWidget(
                      defaultText: AppStrings.doNotHaveAnAccount,
                      spanStyle: AppTextStyle.font14Black500,
                      textSpan: "  ${AppStrings.signUp}",
                      defaultStyle: AppTextStyle.font14Purple500,
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    RichTextWidget(
                      defaultText: AppStrings.bySigningUp,
                      spanStyle: AppTextStyle.font9black500,
                      textSpan: AppStrings.termsOfService,
                      defaultStyle: AppTextStyle.font9Purple500,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}







