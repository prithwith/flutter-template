// ignore_for_file: unused_local_variable, deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/core/infrastructure/hive_database.dart';
import 'package:flutter_template/core/shared/providers.dart';
import 'package:flutter_template/core/styles/app_colors.dart';
import 'package:flutter_template/core/styles/app_text_style.dart';
import 'package:flutter_template/core/utils/common_icons.dart';
import 'package:flutter_template/screens/base/shared/providers.dart';
import 'package:flutter_template/screens/splash/shared/provider.dart';

@RoutePage()
class BasePage extends ConsumerStatefulWidget {
  const BasePage({super.key});

  @override
  ConsumerState<BasePage> createState() => _BasePageState();
}

class _BasePageState extends ConsumerState<BasePage> {
  late PageController pageController = PageController();

  List<Widget> getPages({required String userRole}) {
    // return [HomePage(), ConnectionsPage(), ChatsPage(), SettingsPage()];
    return [];
  }

  List<BottomNavigationBarItem> getBottomNavItems({required String userRole}) {
    return [
      BottomNavigationBarItem(icon: Icon(CommonIcons.activity), label: 'Home'),
      BottomNavigationBarItem(
        icon: Icon(CommonIcons.profile_2user),
        label: 'Connections',
      ),
      BottomNavigationBarItem(icon: Icon(CommonIcons.message), label: 'Chats'),
      BottomNavigationBarItem(
        icon: Icon(CommonIcons.setting_2),
        label: 'Settings',
      ),
    ];
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final splashState = ref.read(splashNotifierProvider);
      final state = ref.read(baseNotifierProvider);
      final stateNotifier = ref.read(baseNotifierProvider.notifier);

      /// Call the api
    });
  }

  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final hive = ref.watch(hiveProvider);
    final userRole = hive.box.get(AppPreferenceKeys.userRole) ?? "";

    final state = ref.watch(baseNotifierProvider);
    final stateNotifier = ref.watch(baseNotifierProvider.notifier);

    return Scaffold(
      backgroundColor: AppColors.colorBackground,
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: getPages(userRole: userRole),
        onPageChanged: (index) {
          stateNotifier.updateBottomIndex(index: index);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: state.bottomNavIndex,
        backgroundColor: AppColors.colorBackground,
        selectedItemColor: AppColors.colorPrimary,
        unselectedItemColor: AppColors.colorBlack,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: AppTextStyles.textStylePoppinsBold.copyWith(
          fontSize: 10.sp,
        ),
        unselectedLabelStyle: AppTextStyles.textStylePoppinsMedium.copyWith(
          fontSize: 10.sp,
        ),
        onTap: (index) {
          stateNotifier.updateBottomIndex(index: index);
          pageController.jumpToPage(index);
        },
        items: getBottomNavItems(userRole: userRole),
      ),
    );
  }
}
