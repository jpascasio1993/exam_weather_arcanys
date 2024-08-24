// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      id: json['id'] as int,
      city: json['city'] as String? ?? 'N/A',
      status: json['status'] as String? ?? 'N/A',
      tempMin: (json['tempMin'] as num?)?.toDouble() ?? 0.0,
      tempMax: (json['tempMax'] as num?)?.toDouble() ?? 0.0,
      temp: (json['temp'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'status': instance.status,
      'tempMin': instance.tempMin,
      'tempMax': instance.tempMax,
      'temp': instance.temp,
    };
