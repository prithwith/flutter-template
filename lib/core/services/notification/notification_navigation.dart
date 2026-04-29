import 'dart:convert';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_template/core/routes/app_router.dart';
import 'package:flutter_template/core/routes/app_router.gr.dart';

class NotificationPayload {
  final String? title;
  final String? body;
  final String? route;
  final String? taskId;
  final String? clientId;
  final Map<String, dynamic>? extra;

  const NotificationPayload({
    this.title,
    this.body,
    this.route,
    this.taskId,
    this.clientId,
    this.extra,
  });

  factory NotificationPayload.fromJson(Map<String, dynamic> json) {
    return NotificationPayload(
      title: json['title'] as String?,
      body: json['body'] as String?,
      route: json['route'] as String?,
      taskId: json['taskId'] as String?,
      clientId: json['clientId'] as String?,
      extra: json['extra'] as Map<String, dynamic>?,
    );
  }
}

class NotificationNavigation {
  static void handleNavigation({required RemoteMessage message}) {
    final payload = NotificationPayload.fromJson(message.data);
    _navigate(payload);
  }

  static void handlePayload(String payloadString) {
    try {
      final data = jsonDecode(payloadString);
      final payload = NotificationPayload.fromJson(data);
      _navigate(payload);
    } catch (_) {
      appRouter.push(const BaseRoute());
    }
  }

  static void _navigate(NotificationPayload payload) {
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
