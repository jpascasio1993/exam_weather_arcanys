import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_exam_arcanys/core/extensions/localization.dart';
import 'package:weather_exam_arcanys/core/extensions/weather_extensions.dart';
import 'package:weather_exam_arcanys/core/mixins/weather_store_mixin/weather_store_mixin.dart';
import 'package:weather_exam_arcanys/data/domain/weather/weather.dart';
import 'package:weather_exam_arcanys/data/state/request_state/request_state.dart';
import 'package:weather_exam_arcanys/data/state/request_state/request_state_state.dart';
import 'package:weather_exam_arcanys/data/store/weather_store/weather_store.dart';
import 'package:weather_exam_arcanys/router/router.dart' hide Builder;

class WeatherDetails extends StatefulWidget {
  final int id;

  const WeatherDetails({super.key, required this.id});

  @override
  State<WeatherDetails> createState() => _WeatherDetailsState();
}

class _WeatherDetailsState extends State<WeatherDetails> with WeatherStoreMixin {
  @override
  void initState() {
    super.initState();
    super.weatherStore.getWeather(widget.id);
  }

  @override
  void didUpdateWidget(covariant WeatherDetails oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.id != widget.id) {
      super.weatherStore.getWeather(widget.id);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider<RequestState<Weather>>.value(value: super.weatherStore.weatherRequest)],
        child: MultiBlocListener(
          listeners: [
            BlocListener<RequestState<Weather>, RequestStateState<Weather>>(
              listenWhen: (previous, current) => previous != current && current.hasError,
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(context.localization.weatherDetailsError, style: const TextStyle(color: Colors.white)),
                  backgroundColor: Colors.red,
                ));
              },
            )
          ],
          child: Builder(builder: (context) {
            final isLoading =
                context.select<RequestState<Weather>, bool>((value) => value.isInitial || value.isLoading);
            final selectedWeather = context.select<WeatherStore, Weather?>((value) => value.state.selectedWeather);

            if (isLoading) {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }

            if (selectedWeather == null) return const SizedBox.shrink();

            return Scaffold(
              backgroundColor: const Color(0xFFF6F7FB),
              appBar: AppBar(
                backgroundColor: const Color(0xFFF6F7FB),
                title: Text(selectedWeather.city),
                elevation: 0,
                leading: IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    WeatherListRoute().push(context);
                  },
                ),
                actions: [
                  IconButton(
                      onPressed: () {
                        super.weatherStore.getWeather(selectedWeather.id);
                      },
                      icon: const Icon(Icons.refresh))
                ],
              ),
              body: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 80.w,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 200.w,
                        width: 200.w,
                        child: FittedBox(
                          child: selectedWeather.status.weatherIcon(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70.w,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                selectedWeather.status,
                                style: TextStyle(color: Colors.grey.withOpacity(0.5), fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10.w,
                              ),
                              Text(
                                context.localization.degreeCelcius(selectedWeather.temp.toStringAsFixed(1)),
                                style: TextStyle(fontSize: 32.0.sp, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const RotatedBox(child: Icon(Icons.chevron_left), quarterTurns: 1),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    context.localization.degreeCelcius(selectedWeather.tempMax.toString()),
                                    style: TextStyle(fontSize: 12.sp),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Row(
                                children: [
                                  const RotatedBox(child: Icon(Icons.chevron_left), quarterTurns: 3),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Text(
                                    context.localization.degreeCelcius(selectedWeather.tempMin.toString()),
                                    style: TextStyle(fontSize: 12.sp),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
        ));
  }
}
