import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../../../injectable.dart';
import '../../../../common/theme/icons.dart';
import 'widgets/forgot_password_dialog.dart';

class SignInPage extends StatelessWidget {
  final ScrollController scrollController;
  const SignInPage({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: context.router.pop, icon: const Icon(Icons.close_rounded)),
          title: const Text('Welcome Back!'),
        ),
        body: SingleChildScrollView(
          controller: scrollController,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
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
                    (_) => context.router.pop(true),
                  ),
                );
              },
              builder: (context, state) {
                return Form(
                  autovalidateMode: state.autoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign in to your account and complete the orders you have!',
                        style: Theme.of(context).textTheme.bodyLarge,
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: 24.0),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (emailAddress) =>
                            context.read<SignInFormBloc>().add(EmailAddressChanged(emailAddress)),
                        validator: (_) => context.read<SignInFormBloc>().state.emailAddress.failureOrValue.fold(
                              (f) => f.error,
                              (_) => '',
                            ),
                        decoration: const InputDecoration(
                          label: Text('Email Address'),
                          prefixIcon: Icon(IconlyBroken.message),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: context.read<SignInFormBloc>().state.isPasswordObscure,
                        onChanged: (password) => context.read<SignInFormBloc>().add(PasswordChanged(password)),
                        validator: (_) => context.read<SignInFormBloc>().state.password.failureOrValue.fold(
                              (f) => f.error,
                              (_) => '',
                            ),
                        decoration: InputDecoration(
                          label: const Text('Password'),
                          prefixIcon: const Icon(IconlyBroken.password),
                          suffixIcon: IconButton(
                            onPressed: () => context.read<SignInFormBloc>().add(const PasswordObscurityChanged()),
                            icon: Icon(context.read<SignInFormBloc>().state.isPasswordObscure
                                ? IconlyBroken.hide
                                : IconlyBroken.show),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: RichText(
                          text: TextSpan(
                            text: 'Forgot your password?',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: Theme.of(context).colorScheme.onBackground.withOpacity(.5),
                                ),
                            recognizer: TapGestureRecognizer()..onTap = () => _forgotPassword(context),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      Hero(
                        tag: 'CTA_button',
                        child: ElevatedButton.icon(
                          onPressed: () {
                            context.read<SignInFormBloc>().add(const SignInPressed());
                          },
                          icon: const Icon(IconlyBroken.login, size: 32.0),
                          label: const Text('Sign In'),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  void _forgotPassword(BuildContext context) async => await showDialog(
        context: context,
        builder: (context) => const ForgotPasswordDialog(),
      ).then((value) {
        if (value ?? false) {
          Flushbar(
            message: 'Email sent seuccefully',
            shouldIconPulse: true,
            margin: const EdgeInsets.all(16.0),
            flushbarStyle: FlushbarStyle.FLOATING,
            borderRadius: BorderRadius.circular(32.0),
            duration: const Duration(milliseconds: 2510),
            messageColor: Theme.of(context).colorScheme.background,
            backgroundColor: Theme.of(context).colorScheme.onBackground,
            icon: Icon(IconlyBroken.info_circle, size: 32.0, color: Theme.of(context).colorScheme.background),
          ).show(context);
        }
      });
}
