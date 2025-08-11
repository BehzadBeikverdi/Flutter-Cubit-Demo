class ToggleThemeState {
  final bool isDark;

  const ToggleThemeState({this.isDark = false});

  ToggleThemeState copyWith({bool? isDark}) {
    return ToggleThemeState(
      isDark: isDark ?? this.isDark,
    );
  }

  List<Object> get props => [isDark];
}