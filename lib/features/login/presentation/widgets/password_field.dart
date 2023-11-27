
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/core/utils/app_strings.dart';
import '../../../../config/app_colors.dart';
import '../../../../core/widets/text_form_field.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: TextFormFieldWidget(
        hintText: AppStrings.password,
        prefix: const Icon(
          Icons.lock_outlined,
          color: AppColors.hintStyleColor,
        ),
        validator: (v) {
          if (v!.isEmpty) {
            return AppStrings.pleaseEnterYourPassword;
          }
          return null;
        },
      ),
    );
  }
}