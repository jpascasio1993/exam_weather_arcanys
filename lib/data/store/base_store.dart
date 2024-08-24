import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_exam_arcanys/data/state/request_state/request_state.dart';

abstract class BaseStore<S> extends Cubit<S> {

  List<StreamSubscription<dynamic>> subscriptions = [];
  List<RequestState<dynamic>> requestStates = [];

  BaseStore(super.initialState){
    this.init();
  }

  void init() {
    subscriptions = [];
  }

  Future<void> dispose() async {
    await Future.forEach(requestStates, (element) => element.close());
    await Future.forEach(subscriptions, (element) => element.cancel());
  }

  bool get isLoading => false;

  @override
  Future<void> close() async {
    await dispose();
    return super.close();
  }

  @override
  void emit(state) {
    if(isClosed) return;
    super.emit(state);
  }
}
