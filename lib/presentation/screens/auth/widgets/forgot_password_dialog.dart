import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../../injectable.dart';
import '../../../common/theme/icons.dart';

class ForgotPasswordDialog extends StatelessWidget {
  const ForgotPasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: BlocConsumer<SignInFormBloc, SignInFormState>(
        listenWhen: (previous, current) => previous.failureOrSuccessOption != current.failureOrSuccessOption,
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
          return AlertDialog(
            actionsAlignment: MainAxisAlignment.center,
            actionsOverflowAlignment: OverflowBarAlignment.center,
            title: const Text('Forgot your password?'),
            content: const Text(
              'We will send you an email to reset your password. Please enter the email you previously used to sign in',
            ),
            actions: [
              TextFormField(
                autovalidateMode: state.autoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
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
              OutlinedButton(
                  onPressed: state.inProgress
                      ? null
                      : () => context.read<SignInFormBloc>().add(const SignInFormEvent.resetPasswordPressed()),
                  child: state.inProgress ? const CircularProgressIndicator() : const Text('Reset password')),
              TextButton(onPressed: () => context.router.pop(false), child: const Text('Cancel')),
            ],
          );
        },
      ),
    );
  }
}
