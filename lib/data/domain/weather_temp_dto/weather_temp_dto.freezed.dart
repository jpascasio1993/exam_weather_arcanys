// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_temp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherTempDTO _$WeatherTempDTOFromJson(Map<String, dynamic> json) {
  return _WeatherTempDTO.fromJson(json);
}

/// @nodoc
mixin _$WeatherTempDTO {
  double get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_min')
  double get tempMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_max')
  double get tempMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherTempDTOCopyWith<WeatherTempDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherTempDTOCopyWith<$Res> {
  factory $WeatherTempDTOCopyWith(
          WeatherTempDTO value, $Res Function(WeatherTempDTO) then) =
      _$WeatherTempDTOCopyWithImpl<$Res, WeatherTempDTO>;
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: 'temp_min') double tempMin,
      @JsonKey(name: 'temp_max') double tempMax});
}

/// @nodoc
class _$WeatherTempDTOCopyWithImpl<$Res, $Val extends WeatherTempDTO>
    implements $WeatherTempDTOCopyWith<$Res> {
  _$WeatherTempDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? tempMin = null,
    Object? tempMax = null,
  }) {
    return _then(_value.copyWith(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherTempDTOCopyWith<$Res>
    implements $WeatherTempDTOCopyWith<$Res> {
  factory _$$_WeatherTempDTOCopyWith(
          _$_WeatherTempDTO value, $Res Function(_$_WeatherTempDTO) then) =
      __$$_WeatherTempDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: 'temp_min') double tempMin,
      @JsonKey(name: 'temp_max') double tempMax});
}

/// @nodoc
class __$$_WeatherTempDTOCopyWithImpl<$Res>
    extends _$WeatherTempDTOCopyWithImpl<$Res, _$_WeatherTempDTO>
    implements _$$_WeatherTempDTOCopyWith<$Res> {
  __$$_WeatherTempDTOCopyWithImpl(
      _$_WeatherTempDTO _value, $Res Function(_$_WeatherTempDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? tempMin = null,
    Object? tempMax = null,
  }) {
    return _then(_$_WeatherTempDTO(
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WeatherTempDTO implements _WeatherTempDTO {
  const _$_WeatherTempDTO(
      {required this.temp,
      @JsonKey(name: 'temp_min') required this.tempMin,
      @JsonKey(name: 'temp_max') required this.tempMax});

  factory _$_WeatherTempDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherTempDTOFromJson(json);

  @override
  final double temp;
  @override
  @JsonKey(name: 'temp_min')
  final double tempMin;
  @override
  @JsonKey(name: 'temp_max')
  final double tempMax;

  @override
  String toString() {
    return 'WeatherTempDTO(temp: $temp, tempMin: $tempMin, tempMax: $tempMax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherTempDTO &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temp, tempMin, tempMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherTempDTOCopyWith<_$_WeatherTempDTO> get copyWith =>
      __$$_WeatherTempDTOCopyWithImpl<_$_WeatherTempDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherTempDTOToJson(
      this,
    );
  }
}

abstract class _WeatherTempDTO implements WeatherTempDTO {
  const factory _WeatherTempDTO(
          {required final double temp,
          @JsonKey(name: 'temp_min') required final double tempMin,
          @JsonKey(name: 'temp_max') required final double tempMax}) =
      _$_WeatherTempDTO;

  factory _WeatherTempDTO.fromJson(Map<String, dynamic> json) =
      _$_WeatherTempDTO.fromJson;

  @override
  double get temp;
  @override
  @JsonKey(name: 'temp_min')
  double get tempMin;
  @override
  @JsonKey(name: 'temp_max')
  double get tempMax;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherTempDTOCopyWith<_$_WeatherTempDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
