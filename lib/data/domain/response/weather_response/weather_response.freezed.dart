// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return _WeatherResponse.fromJson(json);
}

/// @nodoc
mixin _$WeatherResponse {
  @JsonKey(name: 'list')
  List<WeatherDTO> get weathers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
          WeatherResponse value, $Res Function(WeatherResponse) then) =
      _$WeatherResponseCopyWithImpl<$Res, WeatherResponse>;
  @useResult
  $Res call({@JsonKey(name: 'list') List<WeatherDTO> weathers});
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res, $Val extends WeatherResponse>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weathers = null,
  }) {
    return _then(_value.copyWith(
      weathers: null == weathers
          ? _value.weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<WeatherDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherResponseCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$$_WeatherResponseCopyWith(
          _$_WeatherResponse value, $Res Function(_$_WeatherResponse) then) =
      __$$_WeatherResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'list') List<WeatherDTO> weathers});
}

/// @nodoc
class __$$_WeatherResponseCopyWithImpl<$Res>
    extends _$WeatherResponseCopyWithImpl<$Res, _$_WeatherResponse>
    implements _$$_WeatherResponseCopyWith<$Res> {
  __$$_WeatherResponseCopyWithImpl(
      _$_WeatherResponse _value, $Res Function(_$_WeatherResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weathers = null,
  }) {
    return _then(_$_WeatherResponse(
      weathers: null == weathers
          ? _value._weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<WeatherDTO>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WeatherResponse implements _WeatherResponse {
  const _$_WeatherResponse(
      {@JsonKey(name: 'list') final List<WeatherDTO> weathers = const []})
      : _weathers = weathers;

  factory _$_WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherResponseFromJson(json);

  final List<WeatherDTO> _weathers;
  @override
  @JsonKey(name: 'list')
  List<WeatherDTO> get weathers {
    if (_weathers is EqualUnmodifiableListView) return _weathers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weathers);
  }

  @override
  String toString() {
    return 'WeatherResponse(weathers: $weathers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherResponse &&
            const DeepCollectionEquality().equals(other._weathers, _weathers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_weathers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherResponseCopyWith<_$_WeatherResponse> get copyWith =>
      __$$_WeatherResponseCopyWithImpl<_$_WeatherResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherResponseToJson(
      this,
    );
  }
}

abstract class _WeatherResponse implements WeatherResponse {
  const factory _WeatherResponse(
          {@JsonKey(name: 'list') final List<WeatherDTO> weathers}) =
      _$_WeatherResponse;

  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =
      _$_WeatherResponse.fromJson;

  @override
  @JsonKey(name: 'list')
  List<WeatherDTO> get weathers;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherResponseCopyWith<_$_WeatherResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
