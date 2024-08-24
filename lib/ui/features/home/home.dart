import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather_exam_arcanys/core/extensions/localization.dart';
import 'package:weather_exam_arcanys/router/router.dart';
import 'package:weather_exam_arcanys/ui/resources/assets.gen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.weather.image(height: 200.w, width: 200.w),
            SizedBox(
              height: 20.w,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text.rich(TextSpan(
                  text: context.localization.weather,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32.sp, color: Colors.amber),
                  children: [
                    WidgetSpan(
                        child: SizedBox(
                      width: 120.w,
                    )),
                    TextSpan(
                        text: context.localization.forecastApp,
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 32.sp, color: Colors.white))
                  ])),
            ),
            SizedBox(
              height: 20.w,
            ),
            Text(
              context.localization.appDescription,
              style: TextStyle(fontSize: 13.sp, color: Colors.white),
            ),
            SizedBox(
              height: 20.w,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.7,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    )),
                onPressed: () {
                  WeatherListRoute().go(context);

                },
                child: Text(context.localization.getStarted),
              ),
            ),
            SizedBox(
              height: 20.w,
            ),
          ],
        ),
      ),
    );
  }
}
