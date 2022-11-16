import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/auth/account_settings/account_settings_bloc.dart';
import '../../../common/theme/icons.dart';

class EmailVerificationTile extends StatelessWidget {
  const EmailVerificationTile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AccountSettingsBloc, AccountSettingsState>(
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
            (_) => Flushbar(
              message: 'Success',
              shouldIconPulse: true,
              margin: const EdgeInsets.all(16.0),
              flushbarStyle: FlushbarStyle.FLOATING,
              borderRadius: BorderRadius.circular(32.0),
              duration: const Duration(milliseconds: 2510),
              backgroundColor: Theme.of(context).colorScheme.background,
              icon: Icon(
                IconlyBroken.info_circle,
                size: 32.0,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ).show(context),
          ),
        );
      },
      builder: (context, state) {
        return ListTile(
          dense: true,
          isThreeLine: true,
          tileColor: Theme.of(context).colorScheme.error.withOpacity(.1),
          textColor: Theme.of(context).colorScheme.error,
          title: const Text('Email address not verified'),
          subtitle:
              const Text('Your email address is not verified yet! Please check your inbox for a verification email.'),
          trailing: TextButton(
            onPressed: () => context.read<AccountSettingsBloc>().add(const SendVerificationEmailPressed()),
            child: const Text('Resend email'),
          ),
        );
      },
    );
  }
}
