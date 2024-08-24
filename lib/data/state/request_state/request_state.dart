import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_exam_arcanys/core/enums/store_state.dart';
import 'package:weather_exam_arcanys/data/state/request_state/request_state_state.dart';

class RequestState<T> extends _AbstractRequestState<T> {}

abstract class _AbstractRequestState<T> extends Cubit<RequestStateState<T>> {

  _AbstractRequestState(): super(RequestStateState<T>());

  @override
  String get logContext => runtimeType.toString();

  T? get data => state.data;

  bool get hasError => state.storeState == StoreState.ERROR;

  bool get isInitial => state.storeState == StoreState.INITIAL;

  bool get isLoaded => state.storeState == StoreState.LOADED;

  bool get isLoading => state.storeState == StoreState.LOADING;

  Exception? get error => state.exception;

  void reset() => emit(RequestStateState<T>());

  @override
  void emit(RequestStateState<T> state) {
    if(this.isClosed) return;
    super.emit(state);
  }

  void setRequestState(StoreState storeState){
    if(storeState == StoreState.ERROR) {
      emit(state.copyWith(storeState: StoreState.ERROR));
      return;
    }

    if(storeState == StoreState.LOADING) {
      emit(state.copyWith(storeState: StoreState.LOADING, isLoading: true, hasError: false));
      return;
    }

    if(storeState == StoreState.LOADED){
      emit(state.copyWith(storeState: StoreState.LOADED, isLoading: false, hasError: false));
      return;
    }
  }

  Future<void> doRequest(Future<T> Function() request, {bool waitForCurrentRequestToFinish = true}) async {
    if (state.storeState == StoreState.LOADING && waitForCurrentRequestToFinish) {
      debugPrint('Already loading... Skipping');
      return;
    }

    emit(state.copyWith(storeState: StoreState.LOADING, isLoading: true, hasError: false, exception: null));

    try {
      final res = await request();
      emit(state.copyWith(storeState: StoreState.LOADED, data: res, isLoading: false, hasError: false));
    } on Exception catch(e, s) {
      debugPrint('Could not perform request');
      emit(state.copyWith(storeState: StoreState.ERROR, data: state.data != null ? state.data : null, exception: e, isLoading: false, hasError: true));
      addError(e, s);
    }
  }

}
