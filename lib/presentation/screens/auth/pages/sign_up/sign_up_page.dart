import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/auth/auth_bloc/auth_bloc.dart';
import '../../../../../application/auth/sign_up_form/sign_up_form_bloc.dart';
import '../../../../../injectable.dart';
import '../../../../common/theme/icons.dart';
import '../../../../common/widgets/progress_overlay.dart';

class SignUpPage extends StatelessWidget {
  final ScrollController scrollController;
  const SignUpPage({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpFormBloc>()..add(const Started()),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () => null,
            authenticated: (_) => context.router.pop(true),
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
          builder: (context, state) {
            return ProgressOverlay(
              inProgress: state.inProgress || authState.maybeMap(orElse: () => false, inProgress: (_) => true),
              child: Scaffold(
                appBar: AppBar(
                  title: const Text('Sign Up'),
                  automaticallyImplyLeading: false,
                  leading: IconButton(onPressed: context.router.pop, icon: const Icon(Icons.close)),
                ),
                body: SingleChildScrollView(
                  controller: scrollController,
                  padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Form(
                        autovalidateMode: state.autoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Create an account and start managing your business professionally.',
                              style: Theme.of(context).textTheme.bodyLarge,
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(height: 24.0),
                            TextFormField(
                              keyboardType: TextInputType.name,
                              textCapitalization: TextCapitalization.words,
                              initialValue:
                                  context.read<SignUpFormBloc>().state.displayName.failureOrValue.fold((l) => null, id),
                              onChanged: (displayName) =>
                                  context.read<SignUpFormBloc>().add(DisplayNameChanged(displayName)),
                              validator: (_) => context.read<SignUpFormBloc>().state.displayName.failureOrValue.fold(
                                    (f) => f.error,
                                    (_) => null,
                                  ),
                              decoration: const InputDecoration(
                                label: Text('Full Name'),
                                prefixIcon: Icon(IconlyBroken.profile),
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              enabled: !context.read<SignUpFormBloc>().state.userOption.isSome(),
                              initialValue: context.read<SignUpFormBloc>().state.userOption.fold(
                                    () => null,
                                    (user) => context.read<SignUpFormBloc>().state.emailAddress.getOrCrash(),
                                  ),
                              onChanged: (emailAddress) =>
                                  context.read<SignUpFormBloc>().add(EmailAddressChanged(emailAddress)),
                              validator: (_) => context.read<SignUpFormBloc>().state.emailAddress.failureOrValue.fold(
                                    (f) => f.error,
                                    (_) => null,
                                  ),
                              decoration: const InputDecoration(
                                label: Text('Email Address'),
                                prefixIcon: Icon(IconlyBroken.message),
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: context.read<SignUpFormBloc>().state.isPasswordObscure,
                              onChanged: (password) => context.read<SignUpFormBloc>().add(PasswordChanged(password)),
                              validator: (_) => context.read<SignUpFormBloc>().state.password.failureOrValue.fold(
                                    (f) => f.error,
                                    (_) => null,
                                  ),
                              decoration: InputDecoration(
                                label: const Text('Password'),
                                prefixIcon: const Icon(IconlyBroken.password),
                                suffixIcon: IconButton(
                                  onPressed: () => context.read<SignUpFormBloc>().add(const PasswordObscurityChanged()),
                                  icon: Icon(context.read<SignUpFormBloc>().state.isPasswordObscure
                                      ? IconlyBroken.hide
                                      : IconlyBroken.show),
                                ),
                              ),
                            ),
                            const SizedBox(height: 24.0),
                            Hero(
                              tag: 'CTA_button',
                              child: ElevatedButton.icon(
                                onPressed: () => context.read<SignUpFormBloc>().add(const CreateAccountPressed()),
                                icon: const Icon(IconlyBroken.login, size: 32.0),
                                label: const Text('Create account'),
                              ),
                            ),
                          ],
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
    );
  }
}
