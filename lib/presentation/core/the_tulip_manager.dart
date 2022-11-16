import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../application/auth/auth_bloc/auth_bloc.dart';
import '../../application/theme/theme_bloc/theme_bloc.dart';
import '../../injectable.dart';
import '../common/routes/app_router.gr.dart';

class TheTulipManager extends StatelessWidget {
  final int themeIndex;
  TheTulipManager(this.themeIndex, {super.key});

  final AppRouter appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeBloc(themeIndex)),
        BlocProvider(create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested())),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            color: state.theme.colorScheme.background,
            theme: state.theme.copyWith(
              useMaterial3: true,
              textTheme: GoogleFonts.plusJakartaSansTextTheme(state.theme.textTheme),
              platform: TargetPlatform.android,
              cardTheme: const CardTheme(margin: EdgeInsets.zero),
              listTileTheme: const ListTileThemeData(minVerticalPadding: 12.0),
              dividerTheme: const DividerThemeData(indent: 8.0, endIndent: 8.0),
              iconTheme: IconThemeData(size: 24.0, color: state.theme.colorScheme.onBackground),
              toggleableActiveColor: state.theme.colorScheme.primary,

              // toggleButtonsTheme: ToggleButtonsThemeData(
              //   color: state.theme.colorScheme.primary,
              //   fillColor: state.theme.colorScheme.primary,
              //   selectedColor: state.theme.colorScheme.primary,
              // ),
              checkboxTheme: CheckboxThemeData(
                fillColor: MaterialStateProperty.all(state.theme.colorScheme.primary),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
                checkColor: MaterialStateProperty.all(state.theme.colorScheme.onPrimary),
              ),
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                errorMaxLines: 1,
                fillColor: state.theme.colorScheme.secondary.withOpacity(.05),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(24.0), borderSide: BorderSide.none),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(4.0),
                  minimumSize: MaterialStateProperty.all(const Size(double.infinity, 56.0)),
                  backgroundColor: MaterialStateProperty.all(state.theme.colorScheme.primary),
                  surfaceTintColor: MaterialStateProperty.all(state.theme.colorScheme.primary),
                  textStyle: MaterialStateProperty.all(Theme.of(context).textTheme.titleMedium),
                  foregroundColor: MaterialStateProperty.all(state.theme.colorScheme.onPrimary),
                ),
              ),
              bottomSheetTheme: BottomSheetThemeData(
                clipBehavior: Clip.antiAlias,
                backgroundColor: Colors.transparent,
                modalBackgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            debugShowCheckedModeBanner: false,
            routerDelegate: appRouter.delegate(),
            routeInformationParser: appRouter.defaultRouteParser(),
          );
        },
      ),
    );
  }
}
