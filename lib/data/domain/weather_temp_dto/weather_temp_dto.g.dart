// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_temp_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherTempDTO _$$_WeatherTempDTOFromJson(Map<String, dynamic> json) =>
    _$_WeatherTempDTO(
      temp: (json['temp'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
    );

Map<String, dynamic> _$$_WeatherTempDTOToJson(_$_WeatherTempDTO instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
    };
