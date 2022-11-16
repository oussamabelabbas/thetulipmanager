import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../common/routes/app_router.gr.dart';
import '../../../common/theme/icons.dart';
import 'forgot_password_dialog.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: BlocBuilder<SignInFormBloc, SignInFormState>(
        builder: (context, state) {
          return Form(
            autovalidateMode: state.autoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (emailAddress) => context.read<SignInFormBloc>().add(EmailAddressChanged(emailAddress)),
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
                RichText(
                  text: TextSpan(
                    text: 'Forgot your password?',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onBackground.withOpacity(.5),
                        ),
                    recognizer: TapGestureRecognizer()..onTap = () => _forgotPassword(context),
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
