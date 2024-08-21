import 'package:dector_app/core/Routing/app_router.dart';
import 'package:dector_app/core/Routing/routes.dart';
import 'package:dector_app/core/Theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class DocApp extends StatelessWidget {
  const DocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
      return  MaterialApp(
        theme: ThemeData(
          primaryColor: AppColor.primaryColor,
          scaffoldBackgroundColor: AppColor.backgroundColor
        ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onBoarding,
      onGenerateRoute: (settings) => AppRouter().onGenerateRoute(settings),
     
    );
      },
    );
  }
}
