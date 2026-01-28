import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/theming/colors.dart';
import 'package:flutter_application_1/Core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final String? hintText;
  final Widget? suffixIcon;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final bool? isObscureText;
  final Color? fillColor;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    required this.hintText,
    this.suffixIcon,
    this.focusedBorder,
    this.enabledBorder,
    this.hintStyle,
    this.inputTextStyle,
    this.isObscureText,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(vertical: 18.h, horizontal: 20.w),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManger.primary, width: 1.3),
              borderRadius: BorderRadius.circular(16.r),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsManger.lightergrey,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(16.r),
            ),
        hintStyle: hintStyle ?? TextStyles.font14lightGreyRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: ColorsManger.snowwhite,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,
    );
  }
}
