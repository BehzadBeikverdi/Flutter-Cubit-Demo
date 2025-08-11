import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testt/pages/first_page/first_page.dart';

import 'common/main_viewmodel.dart';
import 'common/toggle_theme_cubit.dart';
import 'common/toggle_theme_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late MainViewmodel vm;

  @override
  void initState() {
    super.initState();
    vm = MainViewmodel(
      toggleThemeCubit: ToggleThemeCubit(),
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
      value: vm.toggleThemeCubit,
      child: BlocBuilder<ToggleThemeCubit, ToggleThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Cubit Demo',
            theme: state.isDark ? ThemeData.dark() : ThemeData.light(),
            home: const FirstPage(),
          );
        },
      ),
    );
  }
}
