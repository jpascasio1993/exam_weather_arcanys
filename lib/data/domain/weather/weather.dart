import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';

part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  @JsonSerializable(explicitToJson: true)
  const factory Weather({
    required int id,
    @Default('N/A') String city,
    @Default('N/A') String status,
    @Default(0.0) double tempMin,
    @Default(0.0) double tempMax,
    @Default(0.0) double temp
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
}
