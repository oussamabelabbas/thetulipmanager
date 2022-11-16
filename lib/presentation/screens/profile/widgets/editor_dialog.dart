import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/auth/account_settings/account_settings_bloc.dart';
import '../../../../../../injectable.dart';
import '../../../common/theme/icons.dart';

class EditorDialog extends StatelessWidget {
  final String? displayName;
  final String? emailAddress;
  const EditorDialog({super.key, this.displayName, this.emailAddress});

  String _getTitle() => displayName != null
      ? 'Display Name'
      : emailAddress != null
          ? 'Email Address'
          : 'Password';
  String _getSubtitle() => displayName != null
      ? 'Change your display name from $displayName to a new one'
      : emailAddress != null
          ? 'Change your email address from $emailAddress to a new one'
          : 'Change your password';

  void _onChanged(BuildContext context, String value) => displayName != null
      ? context.read<AccountSettingsBloc>().add(AccountSettingsEvent.displayNameChanged(displayName: value))
      : emailAddress != null
          ? context.read<AccountSettingsBloc>().add(AccountSettingsEvent.emailAddressChanged(emailAddress: value))
          : context.read<AccountSettingsBloc>().add(AccountSettingsEvent.passwordChanged(password: value));

  String? _validator(BuildContext context) => displayName != null
      ? context.read<AccountSettingsBloc>().state.displayName.failureOrUnit.fold((l) => l.error, (_) => null)
      : emailAddress != null
          ? context.read<AccountSettingsBloc>().state.displayName.failureOrUnit.fold((l) => l.error, (_) => null)
          : context.read<AccountSettingsBloc>().state.displayName.failureOrUnit.fold((l) => l.error, (_) => null);

  void _onPressed(BuildContext context) => displayName != null
      ? context.read<AccountSettingsBloc>().add(const AccountSettingsEvent.updateDisplayNamePressed())
      : emailAddress != null
          ? context.read<AccountSettingsBloc>().add(const AccountSettingsEvent.updateEmailAddressPressed())
          : context.read<AccountSettingsBloc>().add(const AccountSettingsEvent.updatePasswordPressed());

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(_getTitle()),
      content: Text(_getSubtitle()),
      actionsAlignment: MainAxisAlignment.center,
      actionsOverflowDirection: VerticalDirection.down,
      actions: [
        BlocProvider(
          create: (context) => getIt<AccountSettingsBloc>(),
          child: BlocConsumer<AccountSettingsBloc, AccountSettingsState>(
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
                  (_) => context.router.pop(),
                ),
              );
            },
            builder: (context, state) {
              return Column(
                children: [
                  TextFormField(
                    enabled: !state.inProgress,
                    initialValue: displayName ?? emailAddress ?? '',
                    onChanged: (value) => _onChanged(context, value),
                    validator: (_) => _validator(context),
                    decoration: InputDecoration(label: Text(_getTitle())),
                  ),
                  const SizedBox(height: 8.0),
                  OutlinedButton(
                    onPressed: () => _onPressed(context),
                    child: Text('Change ${_getTitle()}'),
                  ),
                  TextButton(onPressed: context.router.pop, child: const Text('Cancel')),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
