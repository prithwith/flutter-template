import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:flutter_template/core/constants/app_strings.dart';
import 'package:flutter_template/core/styles/app_colors.dart';
import 'package:flutter_template/core/styles/app_text_style.dart';

class NointernetConnectionPage extends StatelessWidget {
  const NointernetConnectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              const Spacer(flex: 1),
              Column(
                children: [
                  Text(
                    AppStrings.appName,
                    style: AppTextStyles.textStylePoppinsBold.copyWith(
                      fontSize: 20.sp,
                      color: AppColors.colorPrimary,
                      letterSpacing: 0.5,
                    ),
                  ),
                  4.verticalSpace,
                  Text(
                    AppStrings.appVersion,
                    style: AppTextStyles.textStylePoppinsMedium.copyWith(
                      fontSize: 12.sp,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
              50.verticalSpace,
              Container(
                padding: EdgeInsets.all(28.r),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.red.shade50,
                      Colors.red.shade100.withValues(alpha: 0.4),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.withValues(alpha: 0.08),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.wifi_off_rounded,
                  size: 100.sp,
                  color: Colors.redAccent,
                ),
              ),
              30.verticalSpace,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 6.h),
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Text(
                  "OFFLINE MODE",
                  style: AppTextStyles.textStylePoppinsBold.copyWith(
                    fontSize: 12.sp,
                    color: Colors.redAccent,
                    letterSpacing: 0.6,
                  ),
                ),
              ),
              20.verticalSpace,
              Text(
                "You're Offline".toUpperCase(),
                textAlign: TextAlign.center,
                style: AppTextStyles.textStylePoppinsBold.copyWith(
                  fontSize: 24.sp,
                  color: Colors.black87,
                  letterSpacing: 0.3,
                ),
              ),
              12.verticalSpace,
              Text(
                "We can't reach the server right now. Check your internet connection and try again.",
                textAlign: TextAlign.center,
                style: AppTextStyles.textStylePoppinsMedium.copyWith(
                  fontSize: 15.sp,
                  color: Colors.grey.shade600,
                  height: 1.6,
                ),
              ),
              const Spacer(flex: 1),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.signal_wifi_statusbar_connected_no_internet_4,
                        color: AppColors.colorWhite,
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: AppColors.colorPrimary,
                        minimumSize: Size(double.infinity, 50.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                      ),
                      onPressed: () {
                        AppSettings.openAppSettingsPanel(
                          AppSettingsPanelType.internetConnectivity,
                        );
                      },
                      label: Text(
                        'Internet',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.textStylePoppinsMedium.copyWith(
                          fontSize: 15.sp,
                          color: AppColors.colorWhite,
                        ),
                      ),
                    ),
                  ),
                  14.horizontalSpace,
                  Expanded(
                    child: OutlinedButton.icon(
                      icon: const Icon(
                        Icons.wifi,
                        color: AppColors.colorPrimary,
                      ),
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50.h),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        side: BorderSide(
                          color: AppColors.colorPrimary.withValues(alpha: 0.5),
                        ),
                      ),
                      onPressed: () {
                        AppSettings.openAppSettingsPanel(
                          AppSettingsPanelType.wifi,
                        );
                      },
                      label: Text(
                        'Wi-Fi',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.textStylePoppinsMedium.copyWith(
                          fontSize: 15.sp,
                          color: AppColors.colorPrimary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    DateFormat(
                      "'Connection lost on:' dd MMM yyyy • hh:mm a",
                    ).format(DateTime.now()),
                    style: AppTextStyles.textStylePoppinsMedium.copyWith(
                      fontSize: 13.sp,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  15.verticalSpace,
                  Text(
                    "© ${DateTime.now().year} ${AppStrings.appName}",
                    style: AppTextStyles.textStylePoppinsMedium.copyWith(
                      fontSize: 12.sp,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ],
              ),
              20.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
