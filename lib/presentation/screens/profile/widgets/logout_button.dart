import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/auth_bloc/auth_bloc.dart';
import '../../../common/theme/icons.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: OutlinedButton.icon(
        style: ButtonStyle(
          minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 56.0)),
          foregroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.error),
          side: MaterialStatePropertyAll(BorderSide(color: Theme.of(context).colorScheme.error)),
        ),
        onPressed: () => _onPressed(context),
        icon: const Icon(IconlyBroken.logout),
        label: const Text('Logout'),
      ),
    );
  }

  void _onPressed(BuildContext context) async {
    await showDialog<bool?>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('You are Signing out'),
        content: const Text('Are you sure you want to sign out from your account?'),
        actions: [
          TextButton(
            onPressed: () => context.router.pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => context.router.pop(true),
            child: const Text('Logout'),
          ),
        ],
      ),
    ).then(
      (confirmed) {
        if (confirmed ?? false) context.read<AuthBloc>().add(const AuthEvent.signOutPressed());
      },
    );
  }
}
