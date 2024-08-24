
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_exam_arcanys/core/enums/store_state.dart';

part 'request_state_state.freezed.dart';

@Freezed(when: FreezedWhenOptions.none)
class RequestStateState<T> with _$RequestStateState<T> {
  const factory RequestStateState(
      {@Default(StoreState.INITIAL) StoreState storeState,
        T? data,
        @Default(false) bool isLoading,
        @Default(false) bool hasError,
        Exception? exception}) = _RequestStateState;
}

