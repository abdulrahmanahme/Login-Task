import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../config/app_colors.dart';
import '../../../../config/app_text_styles.dart';

class DefaultButton extends StatelessWidget {
  final String buttonText;

  final Function? function;
  final Color? colors;
  final Color? borderColor;

  final TextStyle? buttonTextStyle;

  const DefaultButton(
      {Key? key,
      required this.buttonText,
      required this.function,
      this.colors,
      this.borderColor,
      this.buttonTextStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.w),
      child: Card(
        elevation: 20,
        child: Container(
          width: double.infinity,
          height: 60.h,
          alignment: AlignmentDirectional.center,
          decoration: BoxDecoration(
            color: colors ?? AppColors.purpleColor,
            borderRadius: BorderRadius.circular(7),
            border: borderColor != null
                ? Border.all(
                    color: borderColor!,
                  )
                : null,
          ),
          child: Center(
              child: Text(
            buttonText,
            style: buttonTextStyle ?? AppTextStyle.font18White400,
          )),
        ).onTap(function),
      ),
    );
  }
}