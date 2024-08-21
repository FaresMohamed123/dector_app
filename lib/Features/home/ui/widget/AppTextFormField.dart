import 'package:flutter/material.dart';

import 'package:dector_app/core/Theme/app_color.dart';
import 'package:dector_app/core/Theme/styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key,
      required this.hintText,
      required this.validator,
      required this.icon,
      required this.mycontroller,
      required this.onChanged,
      this.onPressed,
      this.obscureText = false});
  final String hintText;
  final String? Function(String?)? validator;
  final IconData icon;
  final TextEditingController? mycontroller;
  final void Function(String)? onChanged;
  final bool? obscureText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      keyboardType: TextInputType.emailAddress,
      onChanged: onChanged,
      controller: mycontroller,
      validator: validator,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 25),
        fillColor: const Color(0xffFDFDFF),
        filled: true,
        labelText: hintText,
       suffixIconColor: obscureText != null && obscureText! ? AppColor.grey : AppColor.primaryColor,
        suffixIcon: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
          ),
        ),
        labelStyle: TextStyles.font14GrayRegular,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: AppColor.primaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: AppColor.grey,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
