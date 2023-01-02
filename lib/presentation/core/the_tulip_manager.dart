import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc/auth_bloc.dart';
import '../../injectable.dart';
import '../common/routes/app_router.gr.dart';
import '../common/theme/theme.dart';

class TheTulipManager extends StatelessWidget {
  final AdaptiveThemeMode savedThemeMode;
  TheTulipManager(this.savedThemeMode, {super.key});

  final AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested())),
      ],
      child: AdaptiveTheme(
        light: TheTulipThemes.pinkLight,
        dark: TheTulipThemes.pinkDark,
        initial: savedThemeMode,
        builder: (theme, darkTheme) => MaterialApp.router(
          darkTheme: getTheme(darkTheme),
          theme: getTheme(theme),
          debugShowCheckedModeBanner: false,
          routerDelegate: appRouter.delegate(),
          routeInformationParser: appRouter.defaultRouteParser(),
        ),
      ),
    );
  }

  ThemeData getTheme(ThemeData theme) => theme.copyWith(
        useMaterial3: true,
        platform: TargetPlatform.android,
        cardTheme: const CardTheme(
          elevation: 1.0,
          margin: EdgeInsets.zero,
          shadowColor: Colors.transparent,
        ),
        listTileTheme: const ListTileThemeData(minVerticalPadding: 12.0),
        dividerTheme: const DividerThemeData(indent: 8.0, endIndent: 8.0),
        iconTheme: IconThemeData(size: 24.0, color: theme.colorScheme.onBackground),
        toggleableActiveColor: theme.colorScheme.primary,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: theme.colorScheme.primary,
          foregroundColor: theme.colorScheme.onPrimary,
        ),
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateProperty.all(theme.colorScheme.primary),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
          checkColor: MaterialStateProperty.all(theme.colorScheme.onPrimary),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          errorMaxLines: 1,
          fillColor: theme.colorScheme.secondary.withOpacity(.05),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(24.0), borderSide: BorderSide.none),
        ),
        bottomSheetTheme: BottomSheetThemeData(
          clipBehavior: Clip.antiAlias,
          backgroundColor: Colors.transparent,
          modalBackgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(theme.textTheme.bodyLarge),
            minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 56.0)),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(theme.textTheme.bodyLarge),
            minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 56.0)),
          ),
        ),
      );
}
