import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/core/styles/app_colors.dart';
import 'package:flutter_template/core/styles/app_text_style.dart';

class CommonTextfield extends ConsumerWidget {
  final TextEditingController controller;
  final bool readOnly;
  final bool obscureText;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final double? borderRadius;
  final VoidCallback? onTap;

  const CommonTextfield({
    super.key,
    required this.controller,
    this.suffixIcon,
    this.hintText,
    this.labelText,
    this.prefixIcon,
    this.obscureText = false,
    this.readOnly = false,
    this.keyboardType,
    this.inputFormatters,
    this.borderRadius,
    this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      controller: controller,
      readOnly: readOnly,
      keyboardType: keyboardType,
      obscureText: obscureText,
      inputFormatters: inputFormatters,
      onTap: readOnly ? onTap : null,
      decoration: InputDecoration(
        fillColor: AppColors.colorWhite,
        filled: true,
        hintText: hintText,
        hintStyle: AppTextStyles.textStylePoppinsMedium.copyWith(
          color: AppColors.colorBlack,
        ),
        labelText: labelText,
        labelStyle: AppTextStyles.textStylePoppinsMedium.copyWith(
          color: AppColors.colorBlack,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.colorPrimary, width: 1.5.w),
          borderRadius: BorderRadius.circular(borderRadius ?? 10).r,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.colorPrimary, width: 1.5.w),
          borderRadius: BorderRadius.circular(borderRadius ?? 10).r,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.colorPrimary, width: 1.5.w),
          borderRadius: BorderRadius.circular(borderRadius ?? 10).r,
        ),
      ),
    );
  }
}
