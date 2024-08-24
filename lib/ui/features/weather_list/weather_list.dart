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

class WeatherList extends StatefulWidget {
  const WeatherList({super.key});

  @override
  State<WeatherList> createState() => _WeatherListState();
}

class _WeatherListState extends State<WeatherList> with WeatherStoreMixin {
  @override
  void initState() {
    super.initState();
    super.weatherStore.getWeathers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      appBar: AppBar(
        title: Text(context.localization.chooseACity),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: MultiBlocProvider(
        providers: [BlocProvider<RequestState<List<Weather>>>.value(value: super.weatherStore.weathersRequest)],
        child: MultiBlocListener(
          listeners: [
            BlocListener<RequestState<List<Weather>>, RequestStateState<List<Weather>>>(
              listenWhen: (previous, current) => previous != current && current.hasError,
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(context.localization.weathersError, style: TextStyle(color: Colors.white)),
                  backgroundColor: Colors.red,
                ));
              },
            )
          ],
          child: Builder(builder: (context) {
            final isLoading = context.select<WeatherStore, bool>((value) => value.state.isLoading);
            final hasError = context.select<WeatherStore, bool>((value) => value.state.exception != null);
            final weathers = context.select<WeatherStore, List<Weather>>((value) => value.state.weathers);

            if (isLoading && weathers.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if(hasError && weathers.isEmpty) {
              return const SizedBox.shrink();
            }

            return SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(10.0.w),
                  child: RefreshIndicator(
                    onRefresh: () async {
                      super.weatherStore.getWeathers();
                    },
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          final item = weathers[index];
                          return Material(
                            borderRadius: BorderRadius.circular(4),
                            child: GestureDetector(
                              onTap: () {
                                WeatherDetailsRoute(item.id).push(context);
                              },
                              child: Card(
                                elevation: 0,
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 30.w),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Text(item.city,
                                              style: TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.bold)),
                                          Expanded(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  context.localization.degreeCelcius(item.temp.toStringAsFixed(1)),
                                                  style: TextStyle(fontSize: 16.0.sp, fontWeight: FontWeight.bold),
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                SizedBox(
                                                  width: 32.w,
                                                  height: 32.w,
                                                  child: FittedBox(
                                                    child: item.status.weatherIcon(),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(height: 10.0.h),
                        itemCount: weathers.length),
                  ),
                ));
          }),
        ),
      ),
    );
  }
}
