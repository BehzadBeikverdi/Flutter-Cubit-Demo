import 'cubits/counter_cubit.dart';
import '../common/toggle_theme_cubit.dart';

class FirstViewmodel {
  late final CounterCubit counterCubit;

  FirstViewmodel({
    required this.counterCubit,
  });

  void incrementCounter() => counterCubit.increment();
  void decrementCounter() => counterCubit.decrement();

  void dispose() {
    counterCubit.close();
  }
}
