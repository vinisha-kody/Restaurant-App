
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:restaurant/ui/theme/app_font_style.dart';

class TextStyles {

  static TextStyle get ratingTextStyle => TextStyle(
    color: Colors.black.withOpacity(0.7),
    fontSize: 14.sp,
    fontWeight: AppFontStyle.fwRegular,
    fontFamily: AppFontStyle.fontFamily,
    decoration: TextDecoration.none
  );

  static TextStyle get restaurantNameTextStyle => TextStyle(
    color: Colors.black,
    fontSize: 22.sp,
    fontWeight: AppFontStyle.fwMedium,
    fontFamily: AppFontStyle.fontFamily,
      decoration: TextDecoration.none
  );

  static TextStyle get restaurantTypeTextStyle => TextStyle(
    color: Colors.black.withOpacity(0.7),
    fontSize: 16.sp,
    fontWeight: AppFontStyle.fwRegular,
    fontFamily: AppFontStyle.fontFamily,
      decoration: TextDecoration.none
  );

  static TextStyle get distanceTextStyle => TextStyle(
    color: Colors.black.withOpacity(0.8),
    fontSize: 14.sp,
    fontWeight: AppFontStyle.fwRegular,
    fontFamily: AppFontStyle.fontFamily,
      decoration: TextDecoration.none
  );
  
  static TextStyle get dollerTextStyle => TextStyle(
    color: Colors.black.withOpacity(0.7),
    fontSize: 18.sp,
    fontWeight: AppFontStyle.fwMedium,
    fontFamily: AppFontStyle.fontFamily,
      decoration: TextDecoration.none
  );

  static TextStyle get commentTextStyle => TextStyle(
    color: Colors.black.withOpacity(0.7),
    fontSize: 14.sp,
    fontWeight: AppFontStyle.fwRegular,
    fontFamily: AppFontStyle.fontFamily
  );

  static TextStyle get filterTextStyle => TextStyle(
    color: Colors.white,
    fontSize: 14.sp,
    fontWeight: AppFontStyle.fwRegular,
    fontFamily: AppFontStyle.fontFamily,
  );

  static TextStyle get allFilterTextStyle => TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: AppFontStyle.fwRegular,
    fontFamily: AppFontStyle.fontFamily
  );

//
// /*---------------------    10    ------------------------*/
//
//   static TextStyle get txtRegular10 => TextStyle(
//     color: Colors.black,
//     fontSize: 10.sp,
//     fontWeight: AppFontStyle.fwRegular,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//
//   /*---------------------    Mid 10    ------------------------*/
//
//   static TextStyle get txtMedium10 => TextStyle(
//     color: Colors.black,
//     fontSize: 10.sp,
//     fontWeight: AppFontStyle.fwMedium,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//
//   /*---------------------    12    ------------------------*/
//
//   static TextStyle get txtRegular12 => TextStyle(
//     color: Colors.black,
//     fontSize: 12.sp,
//     fontWeight: AppFontStyle.fwRegular,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//
//   /*---------------------    Mid 13    ------------------------*/
//
//   static TextStyle get txtMedium13 => TextStyle(
//     color: Colors.black,
//     fontSize: 13.sp,
//     fontWeight: AppFontStyle.fwMedium,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//
// /*---------------------    13    ------------------------*/
//
//   static TextStyle get txtBold13 => TextStyle(
//     color: Colors.black,
//     fontSize: 13.sp,
//     fontWeight: AppFontStyle.fwSemiBold,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//
//
//   /*---------------------    13    ------------------------*/
//   static TextStyle get txtRegular13 => TextStyle(
//     fontSize: 13.sp,
//     color: Colors.black,
//     fontWeight: AppFontStyle.fwRegular,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//
//   /*---------------------    Mid 14    ------------------------*/
//
//   static TextStyle get txtMedium14 => TextStyle(
//     color: Colors.black,
//     fontSize: 14.sp,
//     fontWeight: AppFontStyle.fwMedium,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//
// /*---------------------    14    ------------------------*/
//   static TextStyle get txtRegular14 => TextStyle(
//     fontSize: 14.sp,
//     color: Colors.black,
//     fontWeight: AppFontStyle.fwRegular,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//
//   /*---------------------    16    ------------------------*/
//
//   static TextStyle get txtBold16 => TextStyle(
//     color: Colors.black,
//     fontSize: 16.sp,
//     fontWeight: AppFontStyle.fwSemiBold,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//   /*---------------------    20    ------------------------*/
//
//   static TextStyle get txtBold20 => TextStyle(
//     color: Colors.black,
//     fontSize: 20.sp,
//     fontWeight: AppFontStyle.fwSemiBold,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//   static TextStyle get txtMedium16 => TextStyle(
//     color: Colors.black,
//     fontSize: 16.sp,
//     fontWeight: AppFontStyle.fwMedium,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//
//   static TextStyle get txtRegular16 => TextStyle(
//     color: Colors.black,
//     fontSize: 16.sp,
//     fontWeight: AppFontStyle.fwRegular,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//
//   /*---------------------    18    ------------------------*/
//
//   static TextStyle get txtMedium18 => TextStyle(
//     fontSize: 18.sp,
//     color: Colors.black,
//     fontWeight: AppFontStyle.fwMedium,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//
//   /*---------------------    20    ------------------------*/
//   static TextStyle get txtMedium20 => TextStyle(
//     fontSize: 20.sp,
//     color: Colors.black,
//     fontWeight: AppFontStyle.fwMedium,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//
//   /*---------------------    24    ------------------------*/
//
//   static TextStyle get txtMedium24 => TextStyle(
//     fontSize: 24.sp,
//     color: Colors.black,
//     fontWeight: AppFontStyle.fwMedium,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//
//   /*---------------------    24    ------------------------*/
//
//   static TextStyle get txtBold24 => TextStyle(
//     fontSize: 24.sp,
//     color: Colors.black,
//     fontWeight: AppFontStyle.fwExtraBold,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//
//   /*---------------------    26    ------------------------*/
//
//   static TextStyle get txtBold26 => TextStyle(
//     fontSize: 26.sp,
//     color: Colors.black,
//     fontWeight: AppFontStyle.fwExtraBold,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//
//   /*---------------------    32    ------------------------*/
//
//   static TextStyle get txtBold32 => TextStyle(
//     fontSize: 32.sp,
//     color: Colors.black,
//     fontWeight: AppFontStyle.fwExtraBold,
//     fontFamily: AppFontStyle.fontFamily,
//   );
//
//   /*---------------------    44    ------------------------*/
//
//   static TextStyle get txtBold44 => TextStyle(
//     fontSize: 44.sp,
//     color: Colors.black,
//     fontWeight: AppFontStyle.fwExtraBold,
//     fontFamily: AppFontStyle.fontFamily,
//   );
}
