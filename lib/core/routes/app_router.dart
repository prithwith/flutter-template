import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

final AppRouter appRouter = AppRouter();

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, path: '/', initial: true),
    AutoRoute(page: BaseRoute.page, path: '/basePage'),
  ];
}
