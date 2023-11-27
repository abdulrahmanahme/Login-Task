import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../../config/app_colors.dart';
import '../../../../config/app_text_styles.dart';

class SocialMediaButton extends StatelessWidget {
  final String buttonText;

  final Function? function;
  final Color? colors;
  final Color? borderColor;
  final String icon;
  final double? height;
  final double? width;



  final TextStyle? buttonTextStyle;

  const SocialMediaButton(
      {Key? key,
      required this.buttonText,
      required this.function,
      this.colors,
      this.borderColor,
      this.buttonTextStyle,
      this.height,
      this.width,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Container(
        width: double.infinity,
        height: 60.h,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          color: colors ?? AppColors.whiteColor,
          borderRadius: BorderRadius.circular(7),
          border: borderColor != null
              ? Border.all(
                  color: borderColor!,
                )
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height:height ??30.h,
                width: width??30.w,
                child: Image.asset(
                  icon,
                )),
            SizedBox(
              width: 13.w,
            ),
            Text(
              buttonText,
              style: buttonTextStyle ?? AppTextStyle.font14Black500,
            ),
          ],
        ),
      ).onTap(function),
    );
  }
}