import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:plushie_daycare_flutter/start_screen.dart';
import 'package:plushie_daycare_flutter/daycare_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: StartRoute.page, path: '/', initial: true),
    AutoRoute(page: DaycareRoute.page, path: '/daycare'),
  ];
}
