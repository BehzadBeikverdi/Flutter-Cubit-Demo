import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testt/pages/first_page/first_viewmodel.dart';
import 'package:testt/pages/first_page/states/counter_state.dart';
import '../common/toggle_theme_cubit.dart';
import 'cubits/counter_cubit.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  late FirstViewmodel vm;

  @override
  void initState() {
    super.initState();
    vm = FirstViewmodel(
      counterCubit: CounterCubit(),
    );
  }

  @override
  void dispose() {
    vm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: vm.counterCubit,
      child: Scaffold(
        appBar: AppBar(title: const Text('First')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) => Text('Count: ${state.count}'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: vm.decrementCounter, child: const Text('-')),
                const SizedBox(width: 12),
                ElevatedButton(onPressed: vm.incrementCounter, child: const Text('+')),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final toggleCubit = context.read<ToggleThemeCubit>();
                toggleCubit.toggle();
              },
              child: const Text('Toggle Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
