import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/auth/auth_bloc/auth_bloc.dart';
import '../../../../../domain/core/errors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => const SizedBox(),
          inProgress: (_) => const Center(child: CircularProgressIndicator()),
          authenticated: (state) => Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    Text(
                      'Hello 👋\n${state.user.displayName ?? 'Stranger'}',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
