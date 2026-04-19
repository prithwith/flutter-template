import 'package:flutter_riverpod/legacy.dart';
import 'package:flutter_template/core/shared/providers.dart';
import 'package:flutter_template/screens/base/application/base_notifier.dart';
import 'package:flutter_template/screens/base/application/base_state.dart';

final baseNotifierProvider = StateNotifierProvider<BaseNotifier, BaseState>(
  (ref) => BaseNotifier(ref.watch(dioProvider), ref.watch(hiveProvider)),
);
