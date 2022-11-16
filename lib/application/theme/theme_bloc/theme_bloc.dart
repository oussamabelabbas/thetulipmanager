import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../presentation/common/theme/theme.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final int themeIndex;
  ThemeBloc(this.themeIndex) : super(ThemeState.initial(themeIndex)) {
    on<Started>(_onStarted);
    on<ThemeChanged>(_onThemeChanged);
  }

  void _onStarted(Started event, Emitter<ThemeState> emit) async {
    emit(state.copyWith(theme: TheTulipThemes.themes[event.themeIndex]));
  }

  void _onThemeChanged(ThemeChanged event, Emitter<ThemeState> emit) async {
    emit(state.copyWith(theme: event.newTheme));
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('themeIndex', TheTulipThemes.themes.indexOf(event.newTheme));
  }
}
