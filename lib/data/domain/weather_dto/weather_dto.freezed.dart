// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherDTO _$WeatherDTOFromJson(Map<String, dynamic> json) {
  return _WeatherDTO.fromJson(json);
}

/// @nodoc
mixin _$WeatherDTO {
  int get id => throw _privateConstructorUsedError;
  List<WeatherStatsDTO> get weather => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'main')
  WeatherTempDTO get temp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherDTOCopyWith<WeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherDTOCopyWith<$Res> {
  factory $WeatherDTOCopyWith(
          WeatherDTO value, $Res Function(WeatherDTO) then) =
      _$WeatherDTOCopyWithImpl<$Res, WeatherDTO>;
  @useResult
  $Res call(
      {int id,
      List<WeatherStatsDTO> weather,
      @JsonKey(name: 'name') String city,
      @JsonKey(name: 'main') WeatherTempDTO temp});

  $WeatherTempDTOCopyWith<$Res> get temp;
}

/// @nodoc
class _$WeatherDTOCopyWithImpl<$Res, $Val extends WeatherDTO>
    implements $WeatherDTOCopyWith<$Res> {
  _$WeatherDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weather = null,
    Object? city = null,
    Object? temp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weather: null == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherStatsDTO>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as WeatherTempDTO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherTempDTOCopyWith<$Res> get temp {
    return $WeatherTempDTOCopyWith<$Res>(_value.temp, (value) {
      return _then(_value.copyWith(temp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherDTOCopyWith<$Res>
    implements $WeatherDTOCopyWith<$Res> {
  factory _$$_WeatherDTOCopyWith(
          _$_WeatherDTO value, $Res Function(_$_WeatherDTO) then) =
      __$$_WeatherDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      List<WeatherStatsDTO> weather,
      @JsonKey(name: 'name') String city,
      @JsonKey(name: 'main') WeatherTempDTO temp});

  @override
  $WeatherTempDTOCopyWith<$Res> get temp;
}

/// @nodoc
class __$$_WeatherDTOCopyWithImpl<$Res>
    extends _$WeatherDTOCopyWithImpl<$Res, _$_WeatherDTO>
    implements _$$_WeatherDTOCopyWith<$Res> {
  __$$_WeatherDTOCopyWithImpl(
      _$_WeatherDTO _value, $Res Function(_$_WeatherDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weather = null,
    Object? city = null,
    Object? temp = null,
  }) {
    return _then(_$_WeatherDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      weather: null == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<WeatherStatsDTO>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as WeatherTempDTO,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WeatherDTO implements _WeatherDTO {
  const _$_WeatherDTO(
      {required this.id,
      final List<WeatherStatsDTO> weather = const [],
      @JsonKey(name: 'name') required this.city,
      @JsonKey(name: 'main') required this.temp})
      : _weather = weather;

  factory _$_WeatherDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherDTOFromJson(json);

  @override
  final int id;
  final List<WeatherStatsDTO> _weather;
  @override
  @JsonKey()
  List<WeatherStatsDTO> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  @JsonKey(name: 'name')
  final String city;
  @override
  @JsonKey(name: 'main')
  final WeatherTempDTO temp;

  @override
  String toString() {
    return 'WeatherDTO(id: $id, weather: $weather, city: $city, temp: $temp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherDTO &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.temp, temp) || other.temp == temp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_weather), city, temp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherDTOCopyWith<_$_WeatherDTO> get copyWith =>
      __$$_WeatherDTOCopyWithImpl<_$_WeatherDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherDTOToJson(
      this,
    );
  }
}

abstract class _WeatherDTO implements WeatherDTO {
  const factory _WeatherDTO(
          {required final int id,
          final List<WeatherStatsDTO> weather,
          @JsonKey(name: 'name') required final String city,
          @JsonKey(name: 'main') required final WeatherTempDTO temp}) =
      _$_WeatherDTO;

  factory _WeatherDTO.fromJson(Map<String, dynamic> json) =
      _$_WeatherDTO.fromJson;

  @override
  int get id;
  @override
  List<WeatherStatsDTO> get weather;
  @override
  @JsonKey(name: 'name')
  String get city;
  @override
  @JsonKey(name: 'main')
  WeatherTempDTO get temp;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherDTOCopyWith<_$_WeatherDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
