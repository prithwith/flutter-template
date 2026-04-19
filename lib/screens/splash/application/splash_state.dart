import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_state.freezed.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState({
    @Default(ThemeMode.system) ThemeMode themeMode,

    @Default("") String fcmToken,
    @Default(true) bool isFCMTokenLoading,

    @Default(true) bool hasInternet,
    @Default(true) bool isHasInternetLoading,
  }) = _SplashState;
  const SplashState._();
}
