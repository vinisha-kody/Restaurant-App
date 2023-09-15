import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

mobileDeviceConfiguration(BuildContext context)
{
  return ScreenUtil.init(
      context,
    designSize: Size(414,896),
    minTextAdapt: true
  );
}