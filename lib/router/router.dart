import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weather_exam_arcanys/ui/features/home/home.dart';
import 'package:weather_exam_arcanys/ui/features/weather_details/weather_details.dart';
import 'package:weather_exam_arcanys/ui/features/weather_list/weather_list.dart';

part 'router.g.dart';

typedef WrapperBuilder = Widget Function(BuildContext context, GoRouterState routerState, Widget child);

typedef Builder = Widget Function(BuildContext context, GoRouterState routerState);

class ScreenRoute {
  AppBar? appBar;
  bool useFade;
  WrapperBuilder? wrapperBuilder;
  Builder builder;

  ScreenRoute({this.appBar, this.useFade = false, this.wrapperBuilder, required this.builder});
}

final appRouter =
    GoRouter(routes: $appRoutes, initialLocation: '/', debugLogDiagnostics: true, redirect: _handleRedirect);

String? _handleRedirect(BuildContext context, GoRouterState state) {
  // Prevent from navigating away from `/` if app is starting up
  return null;
}

abstract class BaseRoute<T> extends GoRouteData {
  ScreenRoute screen(BuildContext context);

  String get name => this.runtimeType.toString();

  @override
  Page<T> buildPage(BuildContext context, GoRouterState state) {
    final child = screen(context);

    return CupertinoPage<T>(child: child.builder(context, state));
  }
}

@TypedGoRoute<WeatherRoute>(
  path: '/',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<WeatherListRoute>(path: 'weathers'),
    TypedGoRoute<WeatherDetailsRoute>(
      path: 'weatherDetails/:id',
    )
  ],
)
class WeatherRoute extends BaseRoute<void> {
  WeatherRoute() : super();

  @override
  ScreenRoute screen(BuildContext context) {
    return ScreenRoute(builder: (context, state) => Home(key: state.pageKey));
  }
}

class WeatherListRoute extends BaseRoute<void> {
  WeatherListRoute(): super();

  @override
  ScreenRoute screen(BuildContext context) {
    return ScreenRoute(builder: (context, state) => WeatherList(key: state.pageKey));
  }
}

class WeatherDetailsRoute extends BaseRoute<void> {
  final int id;

  WeatherDetailsRoute(this.id) : super();

  @override
  ScreenRoute screen(BuildContext context) {
    return ScreenRoute(builder: (context, state) => WeatherDetails(key: state.pageKey, id: id));
  }
}
