import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/core/styles/app_colors.dart';
import 'package:oktoast/oktoast.dart';

Future<void> showToastMessage(
  String message, {
  String errorMessage = '',
  Color? bgColor,
}) async {
  showToast(
    message,
    position: ToastPosition.bottom,
    margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
    duration: const Duration(seconds: 4),
    textPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15).r,
    backgroundColor: bgColor ?? AppColors.colorBlack,
    textStyle: TextStyle(fontSize: 13.sp, color: AppColors.colorWhite),
  );
}

Future<void> showDioError(DioException e) async {
  if (e.response != null) {
    await showToastMessage(e.response?.data as String);
  }
}

Future<void> showconnectionWasInterruptedToastMesage() async {
  await showToastMessage('Connection Was Interrupted');
}
