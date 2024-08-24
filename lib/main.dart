import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:weather_exam_arcanys/core/mixins/service_locator_mixin.dart';
import 'package:weather_exam_arcanys/core/mixins/weather_store_mixin/create_weather_store_mixin.dart';
import 'package:weather_exam_arcanys/data/store/weather_store/weather_store.dart';
import 'package:weather_exam_arcanys/di/injection.dart';
import 'package:weather_exam_arcanys/l10n/l10n.dart';
import 'package:weather_exam_arcanys/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initInjection(GetIt.instance);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp(
    getIt: GetIt.instance,
  ));
}

class MyApp extends StatefulWidget {
  final GetIt getIt;

  const MyApp({super.key, required this.getIt});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with ServiceLocatorMixin, CreateWeatherStoreMixin {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: ScreenUtil.defaultSize,
      minTextAdapt: true,
      builder: (context, child) {
        final mediaQuery = MediaQuery.of(context);
        final textScaleRange = mediaQuery.textScaleFactor.clamp(0.9, 1.08);

        return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: textScaleRange,
            ),
            child: MultiBlocProvider(
                providers: [BlocProvider<WeatherStore>.value(value: super.weatherStore)],
                child: MaterialApp.router(
                  theme: Theme.of(context).copyWith(
                    brightness: Brightness.dark
                  ),
                  debugShowCheckedModeBanner: false,
                  routerDelegate: appRouter.routerDelegate,
                  routeInformationProvider: appRouter.routeInformationProvider,
                  routeInformationParser: appRouter.routeInformationParser,
                  localizationsDelegates: const [
                    AppLocalization.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                  ],
                  supportedLocales: AppLocalization.delegate.supportedLocales,
                )));
      },
    );
  }
}
