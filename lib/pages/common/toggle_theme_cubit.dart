import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testt/pages/common/toggle_theme_state.dart';

class ToggleThemeCubit extends Cubit<ToggleThemeState> {
  ToggleThemeCubit() : super(const ToggleThemeState());
  void toggle() => emit(state.copyWith(isDark: !state.isDark));
}
