// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_stats_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherStatsDTO _$WeatherStatsDTOFromJson(Map<String, dynamic> json) {
  return _WeatherStatsDTO.fromJson(json);
}

/// @nodoc
mixin _$WeatherStatsDTO {
  String get main => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherStatsDTOCopyWith<WeatherStatsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStatsDTOCopyWith<$Res> {
  factory $WeatherStatsDTOCopyWith(
          WeatherStatsDTO value, $Res Function(WeatherStatsDTO) then) =
      _$WeatherStatsDTOCopyWithImpl<$Res, WeatherStatsDTO>;
  @useResult
  $Res call({String main, String description});
}

/// @nodoc
class _$WeatherStatsDTOCopyWithImpl<$Res, $Val extends WeatherStatsDTO>
    implements $WeatherStatsDTOCopyWith<$Res> {
  _$WeatherStatsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherStatsDTOCopyWith<$Res>
    implements $WeatherStatsDTOCopyWith<$Res> {
  factory _$$_WeatherStatsDTOCopyWith(
          _$_WeatherStatsDTO value, $Res Function(_$_WeatherStatsDTO) then) =
      __$$_WeatherStatsDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String main, String description});
}

/// @nodoc
class __$$_WeatherStatsDTOCopyWithImpl<$Res>
    extends _$WeatherStatsDTOCopyWithImpl<$Res, _$_WeatherStatsDTO>
    implements _$$_WeatherStatsDTOCopyWith<$Res> {
  __$$_WeatherStatsDTOCopyWithImpl(
      _$_WeatherStatsDTO _value, $Res Function(_$_WeatherStatsDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? main = null,
    Object? description = null,
  }) {
    return _then(_$_WeatherStatsDTO(
      main: null == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WeatherStatsDTO implements _WeatherStatsDTO {
  const _$_WeatherStatsDTO({required this.main, required this.description});

  factory _$_WeatherStatsDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherStatsDTOFromJson(json);

  @override
  final String main;
  @override
  final String description;

  @override
  String toString() {
    return 'WeatherStatsDTO(main: $main, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherStatsDTO &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, main, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherStatsDTOCopyWith<_$_WeatherStatsDTO> get copyWith =>
      __$$_WeatherStatsDTOCopyWithImpl<_$_WeatherStatsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherStatsDTOToJson(
      this,
    );
  }
}

abstract class _WeatherStatsDTO implements WeatherStatsDTO {
  const factory _WeatherStatsDTO(
      {required final String main,
      required final String description}) = _$_WeatherStatsDTO;

  factory _WeatherStatsDTO.fromJson(Map<String, dynamic> json) =
      _$_WeatherStatsDTO.fromJson;

  @override
  String get main;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherStatsDTOCopyWith<_$_WeatherStatsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
