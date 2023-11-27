import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import '../../../../config/app_colors.dart';
import '../../../../config/app_text_styles.dart';
import '../../../../core/utils/app_strings.dart';

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
          RoundCheckBox(
            onTap: (selected) {},
            size: 15,
            disabledColor: AppColors.pinkColor,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(AppStrings.rememberMe,
              style: AppTextStyle.font13Black500),
          const Spacer(),
          Text(AppStrings.forgotPassword,
              style: AppTextStyle.font13Grey500),
        ],
      ),
    );
  }
}