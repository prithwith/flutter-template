import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/core/constants/app_assets.dart';
import 'package:flutter_template/core/constants/app_strings.dart';
import 'package:flutter_template/core/routes/app_router.gr.dart';
import 'package:flutter_template/core/styles/app_colors.dart';
import 'package:flutter_template/core/styles/app_text_style.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), navigate);
    super.initState();
  }

  Future<void> navigate() async {
    // final hive = ref.read(hiveProvider);
    // String token = hive.box.get(AppPreferenceKeys.token) ?? '';
    // String userId = hive.box.get(AppPreferenceKeys.userId) ?? '';
    // String userRole = hive.box.get(AppPreferenceKeys.userRole) ?? '';

    // if (mounted &&
    //     token.isNotEmpty &&
    //     userId.isNotEmpty &&
    //     userRole.isNotEmpty) {
    //   await AutoRouter.of(
    //     context,
    //   ).pushAndPopUntil(BaseRoute(), predicate: (_) => false);
    // } else {
    //   if (!mounted) return;
    //   await AutoRouter.of(
    //     context,
    //   ).pushAndPopUntil(const SignInRoute(), predicate: (_) => false);
    // }

    /// Temporary Routing ...............................................

    await AutoRouter.of(
      context,
    ).pushAndPopUntil(BaseRoute(), predicate: (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: Stack(
        children: [
          /// To Set Background Image ................

          // SizedBox(
          //   height: MediaQuery.sizeOf(context).height,
          //   width: MediaQuery.sizeOf(context).width,
          //   child: Image.asset(
          //     width: MediaQuery.sizeOf(context).width * 0.52,
          //     "${AppAssets.images}applogo_500x500.png",
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to ${AppStrings.appName}'.toUpperCase(),
                  style: AppTextStyles.textStylePoppinsBold.copyWith(
                    fontSize: 13.sp,
                    letterSpacing: 8,
                    color: AppColors.colorBlack,
                  ),
                ),
                12.verticalSpace,
                Opacity(
                  opacity: 0.9,
                  child: Image.asset(
                    "${AppAssets.images}applogo.png",
                    width: MediaQuery.sizeOf(context).width * 0.50,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
