import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'row_event.dart';

part 'row_state.dart';

class RowBloc extends Bloc<RowEvent, RowState> {
  RowBloc() : super(InitState()) {
    on(_onEvent);
  }

  InitState get initialState => InitState();

  _onEvent(RowEvent event, Emitter<RowState> emit) async {
    if (event is InitState) {
      emit(Loading());
      Timer(const Duration(seconds: 3), () {});
      List<Widget> widgets = [const Text('init text'), const Spacer(), const Text('init date')];
      emit(Loaded(widgets: widgets));
    }
  }
}
