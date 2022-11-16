import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thetulipmanager/presentation/common/widgets/progress_overlay.dart';

import '../../../application/auth/auth_bloc/auth_bloc.dart';
import '../../common/routes/app_router.gr.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.mapOrNull(
          authenticated: (_) => context.router.replace(const HomeRoute()),
          unauthenticated: (_) => context.router.replace(const AuthScreenRoute()),
        );
      },
      child: const Scaffold(
        body: ProgressOverlay(
          inProgress: true,
          child: Center(),
        ),
      ),
    );
  }
}
