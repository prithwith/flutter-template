import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'local_notification_service.dart';
import 'notification_navigation.dart';

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  await LocalNotificationService.instance.init();
  await LocalNotificationService.instance.show(message);
}

class FirebaseNotificationService {
  FirebaseNotificationService._();
  static final instance = FirebaseNotificationService._();
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  Future<void> init() async {
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    await _requestPermission();
    FirebaseMessaging.onMessage.listen((message) async {
      await LocalNotificationService.instance.show(message);
    });
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      NotificationNavigation.handleNavigation(message: message);
    });
    await _messaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  Future<void> _requestPermission() async {
    await _messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
      provisional: false,
    );
  }

  Future<void> handleTerminated() async {
    final message = await _messaging.getInitialMessage();

    if (message != null) {
      NotificationNavigation.handleNavigation(message: message);
    }
  }

  Future<String?> getFcmToken() async {
    return await _messaging.getToken();
  }
}
