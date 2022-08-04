import 'dart:async';

import 'package:bloc/bloc.dart';

part 'text_event.dart';
part 'text_state.dart';

class VTextBloc extends Bloc<VTextEvent ,VTextState>{
  VTextBloc():super(InitState()) {
    on(_onEvent);
  }
  InitState get initialState => InitState();

  _onEvent(VTextEvent event, Emitter<VTextState> emit) async {
    if (event is SendText) {
      // emit(InitState());
      // Timer(const Duration(seconds: 3), () {});
      print('the text is '+event.text);
      emit(ShowText(text: event.text));
    }
  }
}