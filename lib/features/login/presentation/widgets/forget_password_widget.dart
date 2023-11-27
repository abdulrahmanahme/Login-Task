import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../../../config/app_colors.dart';
import '../../../../config/app_text_styles.dart';
import '../../../../core/utils/app_strings.dart';
import 'package:flutter_check_box_rounded/flutter_check_box_rounded.dart';

class ForgetPassWordWidget extends StatelessWidget {
  const ForgetPassWordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CheckBoxRounded(
            onTap: (bool? value) {},
            size: 17,
            borderWidth: 1,
            borderColor:const Color(0xffCED0D2),
            checkedColor:const  Color(0xffCED0D2),
            checkedWidget: Container(
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: const Icon(
                Icons.check,
                size: 10,
                color: AppColors.pinkColor,
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(AppStrings.rememberMe, style: AppTextStyle.font13Black500),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(AppStrings.forgotPassword,
                style: AppTextStyle.font13GreyNormal),
          )
        ],
      ),
    );
  }
}
