import 'package:testt/common/toggle_theme_cubit.dart';

class MainViewmodel {
  late final ToggleThemeCubit toggleThemeCubit;

  MainViewmodel({
    required this.toggleThemeCubit,
  });

  void toggleTheme() => toggleThemeCubit.toggle();

  void dispose() {
    toggleThemeCubit.close();
  }
}