import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc/auth_bloc.dart';
import '../../../application/auth/sign_up_form/sign_up_form_bloc.dart';
import '../../../injectable.dart';
import '../../common/routes/app_router.gr.dart';
import '../../common/theme/icons.dart';
import '../../common/widgets/progress_overlay.dart';
import 'widgets/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpFormBloc>()..add(const Started()),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () => null,
            authenticated: (_) => context.router.replace(const HomeRoute()),
            unauthenticated: (_) => context.router.replace(const AuthScreenRoute()),
          );
        },
        builder: (context, authState) => BlocConsumer<SignUpFormBloc, SignUpFormState>(
          listener: (context, state) {
            state.failureOrSuccessOption.fold(
              () => null,
              (failureOrSuccess) => failureOrSuccess.fold(
                (f) => Flushbar(
                  message: f.message,
                  shouldIconPulse: true,
                  margin: const EdgeInsets.all(16.0),
                  flushbarStyle: FlushbarStyle.FLOATING,
                  borderRadius: BorderRadius.circular(32.0),
                  duration: const Duration(milliseconds: 2510),
                  backgroundColor: Theme.of(context).colorScheme.error,
                  icon: Icon(IconlyBroken.info_circle, size: 32.0, color: Theme.of(context).colorScheme.onError),
                ).show(context),
                (_) => context.read<AuthBloc>().add(const AuthCheckRequested()),
              ),
            );
          },
          buildWhen: (previous, current) => previous.inProgress != current.inProgress,
          builder: (context, state) {
            return ProgressOverlay(
              inProgress: state.inProgress || authState.maybeMap(orElse: () => false, inProgress: (_) => true),
              child: Scaffold(
                appBar: AppBar(
                  title: context.read<SignUpFormBloc>().state.userOption.isSome()
                      ? const Text('Complete Account')
                      : const Text('Sign Up'),
                  automaticallyImplyLeading: false,
                  leading: context.router.canNavigateBack
                      ? IconButton(
                          onPressed: context.router.pop,
                          icon: const Icon(IconlyBroken.arrow___left_2),
                        )
                      : null,
                ),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.read<SignUpFormBloc>().state.userOption.isSome()
                              ? 'Complete your account and start managing your business professionally.'
                              : 'Create an account and start managing your business professionally.',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        if (context.read<SignUpFormBloc>().state.userOption.isNone())
                          RichText(
                            text: TextSpan(
                              text: "\nYou already have an account? Just ",
                              style: Theme.of(context).textTheme.bodySmall,
                              children: [
                                TextSpan(
                                    text: 'sign in',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(color: Theme.of(context).colorScheme.primary),
                                    recognizer: TapGestureRecognizer()..onTap = context.router.pop),
                              ],
                            ),
                          ),
                        const SignUpForm(),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
