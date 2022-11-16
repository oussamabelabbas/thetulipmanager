import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thetulipmanager/injectable.dart';

import '../../../../../../application/auth/account_settings/account_settings_bloc.dart';
import '../../../../../../application/auth/auth_bloc/auth_bloc.dart';
import 'editor_dialog.dart';
import 'email_verification_tile.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AccountSettingsBloc>(),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const SizedBox(),
            authenticated: (authState) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!authState.user.emailVerified) const EmailVerificationTile(),
                const SizedBox(height: 16.0),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Account',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                ListTile(
                  onTap: () => showDialog(
                      context: context, builder: (context) => EditorDialog(displayName: authState.user.displayName)),
                  leading: const Center(widthFactor: 1, child: Icon(Icons.person_rounded)),
                  trailing: const Center(widthFactor: 1, child: Icon(Icons.chevron_right_rounded)),
                  title: const Text('Name'),
                  subtitle: Text(authState.user.displayName ?? 'Add a display name now!'),
                ),
                ListTile(
                  onTap: () => showDialog(
                      context: context, builder: (context) => EditorDialog(emailAddress: authState.user.email)),
                  leading: const Center(widthFactor: 1, child: Icon(Icons.email_rounded)),
                  trailing: const Center(widthFactor: 1, child: Icon(Icons.chevron_right_rounded)),
                  title: const Text('Email address'),
                  subtitle: Text(authState.user.email ?? 'Add an email address to your account'),
                ),
                ListTile(
                  onTap: () => showDialog(context: context, builder: (context) => const EditorDialog()),
                  leading: const Center(widthFactor: 1, child: Icon(Icons.password_rounded)),
                  trailing: const Center(widthFactor: 1, child: Icon(Icons.chevron_right_rounded)),
                  title: const Text('Password'),
                  subtitle: const Text('********'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
