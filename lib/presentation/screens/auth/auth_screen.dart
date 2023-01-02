import 'package:auto_route/auto_route.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth_bloc/auth_bloc.dart';
import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../injectable.dart';
import '../../common/routes/app_router.gr.dart';
import '../../common/widgets/progress_overlay.dart';
import 'pages/sign_in/sign_in_page.dart';
import 'pages/sign_up/sign_up_page.dart';
import 'widgets/animated_images.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  ButtonStyle get _buttonStyle => const ButtonStyle(
        minimumSize: MaterialStatePropertyAll(Size(double.infinity, 56.0)),
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () => null,
            authenticated: (_) => context.router.replace(const HomeScreenRoute()),
          );
        },
        builder: (context, authState) => Scaffold(
          body: ProgressOverlay(
            inProgress: authState.maybeMap(orElse: () => false, inProgress: (_) => true),
            child: SafeArea(
              child: Stack(
                children: [
                  const AnimatedImages(),
                  Column(
                    children: [
                      const Spacer(),
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          borderRadius: const BorderRadius.vertical(top: Radius.circular(24.0)),
                          boxShadow: const [BoxShadow(color: Colors.black45, spreadRadius: 4.0, blurRadius: 16.0)],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Manage your orders like no other business',
                                style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 4.0),
                              Text(
                                'Get Started with The Tulip Manager and never forget about a client again',
                                style: Theme.of(context).textTheme.bodyLarge,
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 24.0),
                              Row(
                                children: [
                                  Expanded(
                                    child: OutlinedButton(
                                      onPressed: () => showFlexibleBottomSheet(
                                        context: context,
                                        anchors: [1],
                                        initHeight: 1,
                                        isModal: true,
                                        isSafeArea: true,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(24.0),
                                        ),
                                        bottomSheetColor: Theme.of(context).colorScheme.background,
                                        builder: (context, scrollController, bottomSheetOffset) =>
                                            SignInPage(scrollController: scrollController),
                                      ).then((shouldCheckAuth) {
                                        if (shouldCheckAuth is! bool || !shouldCheckAuth) return;
                                        context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
                                      }),
                                      child: const Text('Sign In'),
                                    ),
                                  ),
                                  const SizedBox(width: 8.0),
                                  Expanded(
                                    child: ElevatedButton(
                                      onPressed: () => showFlexibleBottomSheet(
                                        context: context,
                                        anchors: [1],
                                        initHeight: 1,
                                        isModal: true,
                                        isSafeArea: true,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(24.0),
                                        ),
                                        bottomSheetColor: Theme.of(context).colorScheme.background,
                                        builder: (context, scrollController, bottomSheetOffset) =>
                                            SignUpPage(scrollController: scrollController),
                                      ).then((shouldCheckAuth) {
                                        if (shouldCheckAuth is! bool || !shouldCheckAuth) return;
                                        context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
                                      }),
                                      child: const Text('Get Started'),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12.0),
                              ElevatedButton.icon(
                                onPressed: () => context.read<SignInFormBloc>().add(const ContinueWithGooglePressed()),
                                style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(1.0),
                                  backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.background),
                                  surfaceTintColor: MaterialStateProperty.all(Theme.of(context).colorScheme.background),
                                  foregroundColor:
                                      MaterialStateProperty.all(Theme.of(context).colorScheme.onBackground),
                                  padding: MaterialStateProperty.all(const EdgeInsets.all(12.0)),
                                ),
                                label: const Text('Continue With Google'),
                                icon: Image.asset('assets/logos/G.png', height: 32.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
