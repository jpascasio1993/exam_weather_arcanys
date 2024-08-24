// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $weatherRoute,
    ];

RouteBase get $weatherRoute => GoRouteData.$route(
      path: '/',
      factory: $WeatherRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'weathers',
          factory: $WeatherListRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'weatherDetails/:id',
          factory: $WeatherDetailsRouteExtension._fromState,
        ),
      ],
    );

extension $WeatherRouteExtension on WeatherRoute {
  static WeatherRoute _fromState(GoRouterState state) => WeatherRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WeatherListRouteExtension on WeatherListRoute {
  static WeatherListRoute _fromState(GoRouterState state) => WeatherListRoute();

  String get location => GoRouteData.$location(
        '/weathers',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $WeatherDetailsRouteExtension on WeatherDetailsRoute {
  static WeatherDetailsRoute _fromState(GoRouterState state) =>
      WeatherDetailsRoute(
        int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/weatherDetails/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
