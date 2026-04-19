import 'dart:convert';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_template/core/model/notification_payload_model.dart';
import 'package:flutter_template/core/routes/app_router.dart';
import 'package:flutter_template/core/routes/app_router.gr.dart';

class NotificationNavigation {
  static void handleNavigation({required RemoteMessage message}) {
    final payload = NotificationPayloadModel.fromJson(message.data);
    _navigate(payload);
  }

  static void handlePayload(String payloadString) {
    try {
      final data = jsonDecode(payloadString);
      final payload = NotificationPayloadModel.fromJson(data);
      _navigate(payload);
    } catch (_) {
      appRouter.push(const BaseRoute());
    }
  }

  static void _navigate(NotificationPayloadModel payload) {
    switch (payload.route) {
      case '/job-profile':
        appRouter.push(const BaseRoute());
        break;

      case '/connections-requests':
        appRouter.push(const BaseRoute());
        break;

      case '/connections':
        appRouter.push(const BaseRoute());
        break;

      default:
        appRouter.push(const BaseRoute());
    }
  }
}
