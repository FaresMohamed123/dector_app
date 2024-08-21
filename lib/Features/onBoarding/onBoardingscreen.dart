import 'package:dector_app/core/Helpers/extension.dart';
import 'package:dector_app/core/Routing/routes.dart';
import 'package:dector_app/core/Theme/app_color.dart';
import 'package:dector_app/core/Theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarging extends StatelessWidget {
  const OnBoarging({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              bottom: 30.h,
            ),
            child: Column(
              //  crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/svg/docdoc_logo.svg'),
                    SizedBox(width: 10.w),
                    Text(
                      'Docdoc',
                      style: TextStyles.font24Block700weight,
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/svg/docdoc_logo_low_opacity.svg',
                    ),
                    Container(
                      width: double.infinity,
                      foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColor.backgroundColor,
                            AppColor.backgroundColor.withOpacity(0.0),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: const [0.14, 0.4],
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/onboarding_doctor.png',
                        height: 450.h,
                      ),
                    ),
                    Positioned(
                      bottom: 1.h,
                      child: Text('Best Doctor \n Appointment App',
                          textAlign: TextAlign.center,
                          style: TextStyles.font32bluebold),
                    ),
                  ],
                ),
                SizedBox(height: 15.h),
                Text(
                  'Manage and schedule all of your medical appointments easily\n with Docdoc to get a new experience.',
                  textAlign: TextAlign.center,
                  style: TextStyles.font10grey,
                ),
                Padding(
                  padding: EdgeInsets.all(40.0.w),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: 45.h,
                    onPressed: () {
                      context.pushReplacementNamed(Routes.loginScreen);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: AppColor.primaryColor,
                    child: Text(
                      'Get Started',
                      style: TextStyles.font12white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
