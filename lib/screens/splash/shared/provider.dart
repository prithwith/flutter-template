import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_template/core/shared/providers.dart';
import 'package:flutter_template/screens/splash/application/splash_notifier.dart';
import 'package:flutter_template/screens/splash/application/splash_state.dart';

final splashNotifierProvider =
    StateNotifierProvider<SplashNotifier, SplashState>(
      (ref) => SplashNotifier(ref.watch(dioProvider), ref.watch(hiveProvider)),
    );
