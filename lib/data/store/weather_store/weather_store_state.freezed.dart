// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_store_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherStoreState {
  List<Weather> get weathers => throw _privateConstructorUsedError;
  Weather? get selectedWeather => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Exception? get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStoreStateCopyWith<WeatherStoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStoreStateCopyWith<$Res> {
  factory $WeatherStoreStateCopyWith(
          WeatherStoreState value, $Res Function(WeatherStoreState) then) =
      _$WeatherStoreStateCopyWithImpl<$Res, WeatherStoreState>;
  @useResult
  $Res call(
      {List<Weather> weathers,
      Weather? selectedWeather,
      bool isLoading,
      Exception? exception});

  $WeatherCopyWith<$Res>? get selectedWeather;
}

/// @nodoc
class _$WeatherStoreStateCopyWithImpl<$Res, $Val extends WeatherStoreState>
    implements $WeatherStoreStateCopyWith<$Res> {
  _$WeatherStoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weathers = null,
    Object? selectedWeather = freezed,
    Object? isLoading = null,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      weathers: null == weathers
          ? _value.weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      selectedWeather: freezed == selectedWeather
          ? _value.selectedWeather
          : selectedWeather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res>? get selectedWeather {
    if (_value.selectedWeather == null) {
      return null;
    }

    return $WeatherCopyWith<$Res>(_value.selectedWeather!, (value) {
      return _then(_value.copyWith(selectedWeather: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_WeatherStoreStateCopyWith<$Res>
    implements $WeatherStoreStateCopyWith<$Res> {
  factory _$$_WeatherStoreStateCopyWith(_$_WeatherStoreState value,
          $Res Function(_$_WeatherStoreState) then) =
      __$$_WeatherStoreStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Weather> weathers,
      Weather? selectedWeather,
      bool isLoading,
      Exception? exception});

  @override
  $WeatherCopyWith<$Res>? get selectedWeather;
}

/// @nodoc
class __$$_WeatherStoreStateCopyWithImpl<$Res>
    extends _$WeatherStoreStateCopyWithImpl<$Res, _$_WeatherStoreState>
    implements _$$_WeatherStoreStateCopyWith<$Res> {
  __$$_WeatherStoreStateCopyWithImpl(
      _$_WeatherStoreState _value, $Res Function(_$_WeatherStoreState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weathers = null,
    Object? selectedWeather = freezed,
    Object? isLoading = null,
    Object? exception = freezed,
  }) {
    return _then(_$_WeatherStoreState(
      weathers: null == weathers
          ? _value._weathers
          : weathers // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      selectedWeather: freezed == selectedWeather
          ? _value.selectedWeather
          : selectedWeather // ignore: cast_nullable_to_non_nullable
              as Weather?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_WeatherStoreState implements _WeatherStoreState {
  const _$_WeatherStoreState(
      {final List<Weather> weathers = const [],
      this.selectedWeather,
      this.isLoading = false,
      this.exception})
      : _weathers = weathers;

  final List<Weather> _weathers;
  @override
  @JsonKey()
  List<Weather> get weathers {
    if (_weathers is EqualUnmodifiableListView) return _weathers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weathers);
  }

  @override
  final Weather? selectedWeather;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Exception? exception;

  @override
  String toString() {
    return 'WeatherStoreState(weathers: $weathers, selectedWeather: $selectedWeather, isLoading: $isLoading, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherStoreState &&
            const DeepCollectionEquality().equals(other._weathers, _weathers) &&
            (identical(other.selectedWeather, selectedWeather) ||
                other.selectedWeather == selectedWeather) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_weathers),
      selectedWeather,
      isLoading,
      exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherStoreStateCopyWith<_$_WeatherStoreState> get copyWith =>
      __$$_WeatherStoreStateCopyWithImpl<_$_WeatherStoreState>(
          this, _$identity);
}

abstract class _WeatherStoreState implements WeatherStoreState {
  const factory _WeatherStoreState(
      {final List<Weather> weathers,
      final Weather? selectedWeather,
      final bool isLoading,
      final Exception? exception}) = _$_WeatherStoreState;

  @override
  List<Weather> get weathers;
  @override
  Weather? get selectedWeather;
  @override
  bool get isLoading;
  @override
  Exception? get exception;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherStoreStateCopyWith<_$_WeatherStoreState> get copyWith =>
      throw _privateConstructorUsedError;
}
