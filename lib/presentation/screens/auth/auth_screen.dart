import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc/auth_bloc.dart';
import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../injectable.dart';
import '../../common/routes/app_router.gr.dart';
import '../../common/theme/icons.dart';
import '../../common/widgets/progress_overlay.dart';
import 'widgets/sign_in_form.dart';
import 'widgets/social_buttons.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () => null,
            authenticated: (_) => context.router.replace(const HomeRoute()),
          );
        },
        builder: (context, authState) => Scaffold(
          body: SingleChildScrollView(
            child: SizedBox.fromSize(
              size: MediaQuery.of(context).size,
              child: BlocConsumer<SignInFormBloc, SignInFormState>(
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
                builder: (context, state) {
                  return ProgressOverlay(
                    inProgress: state.inProgress || authState.maybeMap(orElse: () => false, inProgress: (_) => true),
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 4,
                              child: FittedBox(
                                child: Icon(TheTulipIcons.icon_dark, color: Theme.of(context).colorScheme.primary),
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Text('Wolcome Back!', style: Theme.of(context).textTheme.headlineSmall),
                            Text(
                              'Sign in and continue managing your orders.',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            const Spacer(),
                            const SignInForm(),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12.0),
                              child: Row(children: [
                                const Expanded(child: Divider()),
                                Text('Or continue with', style: Theme.of(context).textTheme.bodySmall),
                                const Expanded(child: Divider())
                              ]),
                            ),
                            const SocialButtons(),
                            const Spacer(),
                            const SizedBox(height: 12.0),
                            Center(
                              child: RichText(
                                text: TextSpan(
                                  text: "Don't have an account? ",
                                  style: Theme.of(context).textTheme.bodySmall,
                                  children: [
                                    TextSpan(
                                      text: 'Register now',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                            color: Theme.of(context).colorScheme.primary,
                                          ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () => context.router.push(const SignUpScreenRoute()),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
