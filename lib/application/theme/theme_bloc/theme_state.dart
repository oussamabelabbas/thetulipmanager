part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState({
    required ThemeData theme,
  }) = _ThemeState;

  factory ThemeState.initial(int themeIndex) => ThemeState(
        theme: TheTulipThemes.themes[themeIndex],
      );
}
