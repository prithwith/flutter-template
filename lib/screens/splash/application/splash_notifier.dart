// ignore_for_file: unused_field

import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_template/core/infrastructure/dio_exceptions.dart';
import 'package:flutter_template/core/infrastructure/hive_database.dart';
import 'package:flutter_template/core/services/notification/firebase_notification_service.dart';
import 'package:flutter_template/core/utils/toast.dart';
import 'package:flutter_template/screens/splash/application/splash_state.dart';

class SplashNotifier extends StateNotifier<SplashState> {
  SplashNotifier(this._dio, this._hiveDataBase) : super(const SplashState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  /// ==========================================================================
  /// THEME INTIALIZE GLOBAL STATE
  /// ==========================================================================
  Future<void> initializeTheme() async {
    final isDarkThemeString =
        _hiveDataBase.box.get(AppPreferenceKeys.themeMode) ??
        'ThemeMode.system';

    isDarkThemeString == "ThemeMode.dark"
        ? state = state.copyWith(themeMode: ThemeMode.dark)
        : isDarkThemeString == "ThemeMode.light"
        ? state = state.copyWith(themeMode: ThemeMode.light)
        : state = state.copyWith(themeMode: ThemeMode.system);
  }

  /// ==========================================================================
  /// Theme Toggling In Global State
  /// ==========================================================================

  Future<void> toggleTheme({
    required ThemeMode themeMode,
    VoidCallback? onTap,
  }) async {
    state = state.copyWith(themeMode: themeMode);

    await _hiveDataBase.box.put(
      AppPreferenceKeys.themeMode,
      state.themeMode.toString(),
    );
    onTap?.call();
  }

  /// ==========================================================================
  ///  Device Token Initialization
  /// ==========================================================================

  Future<void> initializeFCMToken() async {
    try {
      state = state.copyWith(isFCMTokenLoading: true);

      final token =
          await FirebaseNotificationService.instance.getFcmToken() ?? "";

      state = state.copyWith(isFCMTokenLoading: false, fcmToken: token);
      debugPrint("DeviceToken: ${state.fcmToken}");
    } on DioException catch (e) {
      final error = DioExceptions.fromDioError(e).message;
      showToastMessage(error, errorMessage: e.message ?? "");
      state = state.copyWith(isFCMTokenLoading: false);
    }
  }

  /// ==========================================================================
  /// INTERNET CONNECTION CHECKER
  /// ==========================================================================

  StreamSubscription<List<ConnectivityResult>>? connectivitySubscription;
  Future<void> checkInternetConnection() async {
    await connectivitySubscription?.cancel();
    state = state.copyWith(isHasInternetLoading: true);

    Future<void> updateConnectionStatus() async {
      try {
        final connectivityResults = await Connectivity().checkConnectivity();
        bool hasInternetAccess = false;
        if (!connectivityResults.contains(ConnectivityResult.none)) {
          hasInternetAccess = await Dio()
              .get(
                'https://clients3.google.com/generate_204',
                options: Options(
                  sendTimeout: const Duration(seconds: 5),
                  receiveTimeout: const Duration(seconds: 5),
                ),
              )
              .then((response) => response.statusCode == 204)
              .catchError((_) => false);
        }
        state = state.copyWith(
          hasInternet: hasInternetAccess,
          isHasInternetLoading: false,
        );
      } catch (e) {
        state = state.copyWith(hasInternet: false, isHasInternetLoading: false);
      }
    }

    await updateConnectionStatus();
    connectivitySubscription = Connectivity().onConnectivityChanged.listen((_) {
      updateConnectionStatus();
    });
  }

  @override
  void dispose() {
    connectivitySubscription?.cancel();
    super.dispose();
  }

  /// =========================================================================
  /// END OF THE NOTIFIER
  /// =========================================================================
}
