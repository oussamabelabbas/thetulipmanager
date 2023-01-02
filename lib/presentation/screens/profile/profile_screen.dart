import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/auth/auth_bloc/auth_bloc.dart';
import '../../common/routes/app_router.gr.dart';
import '../../common/widgets/progress_overlay.dart';
import 'widgets/account_settings.dart';
import 'widgets/app_settings.dart';
import 'widgets/help_support.dart';
import 'widgets/logout_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () => null,
          unauthenticated: (_) => context.router.replace(const AuthRoute()),
        );
      },
      builder: (context, state) => ProgressOverlay(
        inProgress: state.maybeMap(orElse: () => true, authenticated: (_) => false),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: context.router.pop, icon: const Icon(Icons.arrow_back_rounded)),
            title: const Text('Settings'),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AccountSettings(),
                Divider(),
                AppSettings(),
                Divider(),
                HelpSupport(),
                Divider(),
                LogoutButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
