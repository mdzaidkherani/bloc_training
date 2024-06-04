import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{

  CounterBloc(): super(CounterState()){
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);

  }

  void _increment(IncrementCounter event, Emitter<CounterState> emit){
    emit(state.copyWrite(counter: state.counter + 1));
  }

  void _decrement(DecrementCounter event, Emitter<CounterState> emit){
    if(state.counter > 0){
      emit(state.copyWrite(counter: state.counter - 1));
    }

  }

}