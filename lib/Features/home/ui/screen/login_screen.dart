// ignore_for_file: avoid_print

import 'package:dector_app/Features/home/ui/widget/AppTextFormField.dart';
import 'package:dector_app/Features/home/ui/widget/terms_and_conditions_text.dart';
import 'package:dector_app/core/Helpers/extension.dart';
import 'package:dector_app/core/Helpers/validinput.dart';
import 'package:dector_app/core/Routing/routes.dart';
import 'package:dector_app/core/Theme/app_color.dart';
import 'package:dector_app/core/Theme/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 20,
            right: 20,
            bottom: 20,
          ),
          child: ListView(children: [
            Text('Welcome Back', style: TextStyles.font32BlueBold),
            SizedBox(height: 8.h),
            Text(
                'Were excited to have you back, cant wait to\nsee what youve been up to since you last\nlogged in.',
                style: TextStyles.font14GrayRegular),
            SizedBox(height: 36.h),
            Form(
              key: formKey,
              child: Column(
                children: [
                  AppTextFormField(
                    hintText: 'Email',
                    icon: Icons.email,
                    validator: (validator) =>
                        validInPut(validator!, 3, 30, 'email'),
                    mycontroller: null,
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  SizedBox(height: 20.h),
                  AppTextFormField(
                    hintText: 'Password',
                    icon: obscureText ? Icons.visibility_off : Icons.visibility,
                    validator: (validator) =>
                        validInPut(validator!, 3, 30, 'password'),
                    mycontroller: null,
                    onChanged: (value) {
                      print(value);
                    },
                    obscureText: obscureText,
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  ),
                  SizedBox(height: 24.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyles.font12BlueRegular,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.primaryColor,
                minimumSize: Size(double.infinity, 50.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Login', style: TextStyles.font12witeRegular),
            ),
            SizedBox(height: 20.h),
            const TermsAndConditionsText(),
              SizedBox(height:60.h),
             RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?',
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
              },
          ),
        ],
      ),
    )
          ]),
        ),
      ),
    );
  }
}
