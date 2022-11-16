import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/auth/auth_bloc/auth_bloc.dart';
import '../../common/routes/app_router.gr.dart';
import '../../common/theme/icons.dart';
import '../../common/widgets/progress_overlay.dart';
import 'widgets/account_settings.dart';
import 'widgets/app_settings.dart';
import 'widgets/help_support.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () => null,
          unauthenticated: (_) => context.router.replace(const AuthScreenRoute()),
        );
      },
      builder: (context, state) => ProgressOverlay(
        inProgress: state.maybeMap(orElse: () => true, authenticated: (_) => false),
        child: state.maybeMap(
          orElse: () => const SizedBox(),
          authenticated: (state) => Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Settings',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    const AccountSettings(),
                    const SizedBox(height: 16.0),
                    const AppSettings(),
                    const SizedBox(height: 16.0),
                    const HelpSupport(),
                    const SizedBox(height: 16.0),
                    Center(
                      heightFactor: 1,
                      child: OutlinedButton.icon(
                        onPressed: () => context.read<AuthBloc>().add(const AuthEvent.signOutPressed()),
                        icon: const Icon(IconlyBroken.logout),
                        label: const Text('Logout'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
