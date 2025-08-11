import 'package:flutter_bloc/flutter_bloc.dart';

import '../states/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState());

  void increment() => emit(state.copyWith(count: state.count + 1));

  void decrement() => emit(state.copyWith(count: state.count - 1));
}