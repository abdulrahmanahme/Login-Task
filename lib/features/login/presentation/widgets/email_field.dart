import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/core/utils/app_strings.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../../config/app_colors.dart';
import '../../../../core/widets/text_form_field.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: TextFormFieldWidget(
        hintText: AppStrings.emailAddress,
        prefix: const Icon(
          Icons.mail_outline,
          color: AppColors.hintStyleColor,
        ),
        validator: (v) {
          if (v!.isEmpty) {
            return AppStrings.pleaseEnterYourEmail;
          }
          if (!v.validateEmail()) {
            return AppStrings.pleaseEnterYourValidEmail;
          }
          return null;
        },
      ),
    );
  }
}
