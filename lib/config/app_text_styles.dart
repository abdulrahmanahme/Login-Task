import 'package:flutter/material.dart';
import 'package:login/config/app_colors.dart';

class AppTextStyle {
  ///FontSize
  static const TextStyle fontSize9= TextStyle(fontSize: 9);
  
  static const TextStyle fontSize23 = TextStyle(fontSize: 23);
  static const TextStyle fontSize16 = TextStyle(fontSize: 16);
  static const TextStyle fontSize14= TextStyle(fontSize: 14);
  static const TextStyle fontSize18= TextStyle(fontSize: 18);
  static const TextStyle fontSize13= TextStyle(fontSize: 13);




  ///FontWeight

  static const TextStyle fontWeight400 = TextStyle(fontWeight: FontWeight.w400);
  static const TextStyle fontWeight500 = TextStyle(fontWeight: FontWeight.w500);

    
  ///Font Family
  static const TextStyle fontCircularStd = TextStyle(fontFamily: "CircularStd.woff");

  ///FontStyle
   
   static TextStyle get font9black500 => fontCircularStd
   .merge(fontWeight500 )
      .merge(fontSize9)
      .copyWith(color: AppColors.blackColor);
   static TextStyle get font23black400 => fontCircularStd
   .merge(fontWeight400 )
      .merge(fontSize23)
      .copyWith(color: AppColors.blackColor);

       static TextStyle get font14Black500 => fontCircularStd
   .merge(fontWeight500 )
      .merge(fontSize14)
      .copyWith(color: AppColors.blackColor);

        static TextStyle get font13Black500 => fontCircularStd
   .merge(fontWeight500 )
      .merge(fontSize13)
      .copyWith(color: AppColors.blackColor);

      

      static TextStyle get font16Black400 => fontCircularStd
   .merge(fontWeight400 )
      .merge(fontSize16)
      .copyWith(color: AppColors.blackColor);

       static TextStyle get font14HintStyle400 => fontCircularStd
   .merge(fontWeight400 )
      .merge(fontSize14)
      .copyWith(color: AppColors.hintStyleColor);

      static TextStyle get font14White400 => fontCircularStd
   .merge(fontWeight400 )
      .merge(fontSize14)
      .copyWith(color: AppColors.whiteColor);

      static TextStyle get font18White400 => fontCircularStd
   .merge(fontWeight400 )
      .merge(fontSize18)
      .copyWith(color: AppColors.whiteColor);

    
       static TextStyle get font13Grey500 => fontCircularStd
   .merge(fontWeight500 )
      .merge(fontSize13)
      .copyWith(color: AppColors.greyColor);

      static TextStyle get font9Purple500=> fontCircularStd
   .merge(fontWeight500 )
      .merge(fontSize9).copyWith(color: AppColors.purpleColor);
      
static TextStyle get font14Purple500 => fontCircularStd
   .merge(fontWeight500 )
      .merge(fontSize14)
      .copyWith(color: AppColors.purpleColor);
      
 static TextStyle get font14Error400 => fontCircularStd
   .merge(fontWeight400 )
      .merge(fontSize16)
      .copyWith(color: AppColors.errorColor);


}
