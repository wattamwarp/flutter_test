

import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'container_event.dart';
part 'container_state.dart';

class VContainerBloc extends Bloc<VContainerEvent, VContainerState>{
  VContainerBloc():super(InitState()){
    on(_onEvent);
  }


  InitState get initialState => InitState();

  _onEvent(VContainerEvent event , Emitter<VContainerState>emit)async{

    if(event is SendContainerDetails){
      emit(InitState());
      Timer(const Duration(seconds: 3), () {});
      emit(RenderContainer());

    }

  }

}