// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WeatherDTO _$$_WeatherDTOFromJson(Map<String, dynamic> json) =>
    _$_WeatherDTO(
      id: json['id'] as int,
      weather: (json['weather'] as List<dynamic>?)
              ?.map((e) => WeatherStatsDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      city: json['name'] as String,
      temp: WeatherTempDTO.fromJson(json['main'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherDTOToJson(_$_WeatherDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'name': instance.city,
      'main': instance.temp.toJson(),
    };
