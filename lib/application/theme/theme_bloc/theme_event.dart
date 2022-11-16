part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.started({required int themeIndex}) = Started;
  const factory ThemeEvent.themeChanged({required ThemeData newTheme}) = ThemeChanged;
}
