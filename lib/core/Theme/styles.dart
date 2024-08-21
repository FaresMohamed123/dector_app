import 'package:dector_app/core/Theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  
  static  TextStyle font24Block700weight = TextStyle(
    color: Colors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,    
  );

  static  TextStyle font32bluebold = TextStyle(
    color: AppColor.primaryColor,
    fontSize: 32.sp,
    fontWeight: FontWeight.bold,    
  );
  static TextStyle font10grey = TextStyle(
    color: Colors.grey,
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,    
  );
  static TextStyle font12white = TextStyle(
    color: Colors.white,
    fontSize: 12.sp,
    fontWeight: FontWeight.bold,    
  );
}