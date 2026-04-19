import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/core/constants/app_strings.dart';
import 'package:flutter_template/core/constants/app_urls.dart';
import 'package:flutter_template/core/services/notification/firebase_notification_service.dart';
import 'package:flutter_template/core/services/notification/local_notification_service.dart';
import 'package:flutter_template/core/shared/providers.dart';
// import 'package:flutter_template/firebase_options.dart';
import 'package:flutter_template/screens/splash/shared/provider.dart';
import 'package:oktoast/oktoast.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:screen_protector/screen_protector.dart';
import 'core/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Prevent Screenshot & Screen Recording
  await ScreenProtector.preventScreenshotOn();

  /// Initialize Firebase (if needed)
  await Firebase.initializeApp(
    // options: DefaultFirebaseOptions.currentPlatform
  );
  await LocalNotificationService.instance.init();
  await FirebaseNotificationService.instance.init();
  await FirebaseNotificationService.instance.handleTerminated();

  /// Lock orientation
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChannels.textInput.invokeMethod('TextInput.hide');
  runApp(const ProviderScope(child: MyApp()));
}

final initializationProvider = FutureProvider<Unit>((ref) async {
  final splashNotifier = ref.read(splashNotifierProvider.notifier);
  final dio = ref.read(dioProvider);

  await ref.read(hiveProvider).init();
  await Future.wait([
    splashNotifier.initializeTheme(),
    splashNotifier.initializeFCMToken(),
    splashNotifier.checkInternetConnection(),
  ]);

  dio.options = BaseOptions(
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
    validateStatus: (_) => true,
    baseUrl: AppUrls.baseUrl,
  );

  dio.interceptors.clear();
  dio.interceptors.add(PrettyDioLogger(requestHeader: true, requestBody: true));

  return unit;
});

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    super.initState();

    ref.read(initializationProvider);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return OKToast(
          child: MaterialApp.router(
            theme: ThemeData(
              useMaterial3: true,
              sliderTheme: const SliderThemeData(
                showValueIndicator: ShowValueIndicator.alwaysVisible,
              ),
              pageTransitionsTheme: const PageTransitionsTheme(
                builders: {
                  TargetPlatform.android: CupertinoPageTransitionsBuilder(),
                  TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
                },
              ),
            ),
            title: AppStrings.appName,
            routeInformationParser: appRouter.defaultRouteParser(),
            routerDelegate: appRouter.delegate(),
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}
