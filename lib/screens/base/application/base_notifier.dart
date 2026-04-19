// ignore_for_file: parameter_assignments, unused_field, avoid_print

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_template/core/constants/api_endpoints.dart';
import 'package:flutter_template/core/infrastructure/dio_exceptions.dart';
import 'package:flutter_template/core/infrastructure/hive_database.dart';
import 'package:flutter_template/core/model/user_model.dart';
import 'package:flutter_template/core/routes/app_router.gr.dart';
import 'package:flutter_template/core/utils/toast.dart';
import 'package:flutter_template/screens/base/application/base_state.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class BaseNotifier extends StateNotifier<BaseState> {
  BaseNotifier(this._dio, this._hiveDataBase) : super(const BaseState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  void updateBottomIndex({required int index}) {
    state = state.copyWith(bottomNavIndex: index);
  }

  void clearBottomIndex() {
    state = state.copyWith(bottomNavIndex: 0);
  }

  /// =========================================================================
  /// DOUBLE PRESSED TO CLOSE THE APP
  /// =========================================================================

  DateTime? lastPressed;
  Future<bool> closeApp() async {
    final now = DateTime.now();
    final isExitWarning =
        lastPressed == null ||
        now.difference(lastPressed!) > const Duration(seconds: 2);

    if (isExitWarning) {
      lastPressed = now;
      showToastMessage('Press again to close app');
      return false;
    } else {
      return true;
    }
  }

  /// =========================================================================
  /// UNAUTHENTICATED USER
  /// =========================================================================

  Future<void> unAuthenticatedUser(BuildContext context) async {
    _hiveDataBase.box.clear();
    _dio.options.headers.clear();

    context.router.pushAndPopUntil(const BaseRoute(), predicate: (_) => false);
  }

  /// =========================================================================
  /// STORE DEVICE TOKEN IN SERVER
  /// =========================================================================

  Future<void> storeDeviceToken({
    VoidCallback? onTap,
    VoidCallback? onTokenExpired,
    required String deviceToken,
  }) async {
    try {
      state = state.copyWith(isDevicetokenLoading: true);

      FormData body = FormData.fromMap({'device_token': deviceToken});

      final response = await _dio.post<Map<String, dynamic>>(
        ApiEndpoints.storeDeviceToken,
        data: body,
      );

      if (response.statusCode == 200 && response.data != null) {
        // showToastMessage(response.data?["message"]);
        onTap?.call();
      } else if (response.statusCode == 401) {
        showToastMessage(response.data?["message"]);
        onTokenExpired?.call();
      } else {
        showToastMessage(response.data?["message"]);
      }
    } on DioException catch (e) {
      final error = DioExceptions.fromDioError(e).message;
      showToastMessage(error, errorMessage: e.message ?? '');
    } finally {
      state = state.copyWith(isDevicetokenLoading: false);
    }
  }

  /// =========================================================================
  /// FETCH ALL USERS
  /// =========================================================================

  Future<void> fetchAllUsers({
    bool loadMore = false,
    RefreshController? usersController,
    VoidCallback? onExpiredToken,
  }) async {
    try {
      if (state.isfetchUsersLoading) return;

      if (loadMore && state.productsPaginationId == 0) {
        usersController?.loadNoData();
        return;
      }

      if (!loadMore) {
        state = state.copyWith(isfetchUsersLoading: true);
      }

      final response = await _dio.post<Map<String, dynamic>>(
        ApiEndpoints.fetchAllUsers,
        data: FormData.fromMap({"page": state.productsPaginationId}),
      );

      if (response.statusCode == 200 && response.data != null) {
        final List<UserModel> updatedList = loadMore
            ? [...state.usersList]
            : [];

        for (var item in response.data?["data"]) {
          updatedList.add(UserModel.fromJson(item));
        }

        state = state.copyWith(
          isfetchUsersLoading: false,
          usersList: updatedList,
          productsPaginationId: response.data?["data"]["next_page"] ?? 0,
          totalUsersCount: response.data?["data"]["total_items"] ?? 0,
        );

        if (loadMore) {
          if ((response.data?["data"]["next_page"] ?? 0) == 0) {
            usersController?.loadNoData();
          } else {
            usersController?.loadComplete();
          }
        }
      } else if (response.statusCode == 401) {
        onExpiredToken?.call();
        usersController?.loadFailed();
        showToastMessage(response.data?["message"]);
      } else {
        usersController?.loadFailed();
        showToastMessage(response.data?["message"]);
      }
    } on DioException catch (e) {
      final error = DioExceptions.fromDioError(e).message;
      showToastMessage(error, errorMessage: e.message ?? '');
      usersController?.loadFailed();
    } finally {
      state = state.copyWith(isfetchUsersLoading: false);
    }
  }

  /// =========================================================================
  /// END OF THE NOTIFIER
  /// =========================================================================
}
