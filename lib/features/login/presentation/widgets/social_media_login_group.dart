import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:login/features/login/presentation/widgets/social_media_button.dart';
import '../../../../config/app_colors.dart';
import '../../../../config/app_text_styles.dart';
import '../../../../config/image_resources.dart';
import '../../../../core/utils/app_strings.dart';

class SocialMediaLoginGroup extends StatelessWidget {
  const SocialMediaLoginGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaButton(
          icon: ImageResources.googleIcon,
          buttonText: AppStrings.continueWithGoogle,
          function: () {},
          height: 40,
          width: 40,
        ),
        SizedBox(
          height: 10.h,
        ),
        SocialMediaButton(
          icon: ImageResources.appleIcon,
          colors: AppColors.blackColor,
          buttonTextStyle: AppTextStyle.font14White400,
          buttonText: AppStrings.signInWithAppleID,
          function: () {},
        ),
        SizedBox(
          height: 10.h,
        ),
        SocialMediaButton(
          icon: ImageResources.facebookIcon,
          colors: AppColors.blueColor,
          buttonTextStyle: AppTextStyle.font14White400,
          buttonText: AppStrings.continueWithFacebook,
          function: () {},
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    );
  }
}