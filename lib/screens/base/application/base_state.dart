import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/core/model/user_model.dart';

part 'base_state.freezed.dart';

@freezed
abstract class BaseState with _$BaseState {
  const factory BaseState({
    UserModel? user,

    @Default(0) int bottomNavIndex,
    @Default(false) bool isLoading,

    @Default(false) bool isDevicetokenLoading,

    @Default(false) bool isfetchUsersLoading,
    @Default([]) List<UserModel> usersList,
    @Default(0) int productsPaginationId,
    @Default(0) int totalUsersCount,
  }) = _BaseState;
  const BaseState._();
}
