import 'dart:async';
import 'package:flutter/material.dart';

class Debouncer {
  final int milliseconds;

  Timer? _timer;
  Debouncer({this.milliseconds = 1000});
  void run(VoidCallback action) {
    if (null != _timer) {
      _timer!.cancel();
    }
    _timer = Timer(const Duration(milliseconds: 1000), action);
  }
}
