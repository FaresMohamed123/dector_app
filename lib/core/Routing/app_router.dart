// ignore_for_file: unused_local_variable

import 'package:dector_app/Features/home/ui/screen/login_screen.dart';
import 'package:dector_app/Features/home/ui/screen/signUpScreen.dart';
import 'package:dector_app/Features/onBoarding/onBoardingscreen.dart';
import 'package:dector_app/core/Routing/routes.dart';
import 'package:flutter/material.dart';

class AppRouter {

  Route onGenerateRoute(RouteSettings routeSettings) {
      final arguments =routeSettings.arguments;

    switch (routeSettings.name) {
        case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoarging());
        case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
        case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      default:
        return MaterialPageRoute(builder: (_) =>  Scaffold(
          body: Center(child: Text('No route defined${routeSettings.name}')),
        ));
    }
  }
}
