import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/auth_bloc/auth_bloc.dart';
import '../../../../application/auth/sign_up_form/sign_up_form_bloc.dart';
import '../../../common/theme/icons.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: BlocBuilder<SignUpFormBloc, SignUpFormState>(
        builder: (context, state) {
          return Form(
            autovalidateMode: state.autoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  keyboardType: TextInputType.name,
                  textCapitalization: TextCapitalization.words,
                  initialValue: context.read<SignUpFormBloc>().state.displayName.failureOrValue.fold((l) => null, id),
                  onChanged: (displayName) => context.read<SignUpFormBloc>().add(DisplayNameChanged(displayName)),
                  validator: (_) => context.read<SignUpFormBloc>().state.displayName.failureOrValue.fold(
                        (f) => f.error,
                        (_) => null,
                      ),
                  decoration: const InputDecoration(
                    label: Text('Full Name'),
                    prefixIcon: Icon(IconlyBroken.profile),
                  ),
                ),
                const SizedBox(height: 12.0),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  enabled: !context.read<SignUpFormBloc>().state.userOption.isSome(),
                  initialValue: context.read<SignUpFormBloc>().state.userOption.fold(
                        () => null,
                        (user) => context.read<SignUpFormBloc>().state.emailAddress.getOrCrash(),
                      ),
                  onChanged: (emailAddress) => context.read<SignUpFormBloc>().add(EmailAddressChanged(emailAddress)),
                  validator: (_) => context.read<SignUpFormBloc>().state.emailAddress.failureOrValue.fold(
                        (f) => f.error,
                        (_) => null,
                      ),
                  decoration: const InputDecoration(
                    label: Text('Email Address'),
                    prefixIcon: Icon(IconlyBroken.message),
                  ),
                ),
                const SizedBox(height: 12.0),
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
                    onPressed: () => context.read<SignUpFormBloc>().add(state.userOption
                        .fold(() => const CreateAccountPressed(), (_) => const CompleteAccountPressed())),
                    icon: const Icon(IconlyBroken.login, size: 32.0),
                    label: context.read<SignUpFormBloc>().state.userOption.isSome()
                        ? const Text('Confirm account')
                        : const Text('Create account'),
                  ),
                ),
                const SizedBox(height: 24.0),
                context.read<AuthBloc>().state.maybeMap(
                      orElse: () => const SizedBox(),
                      authenticated: (_) => signOutButton(context),
                    ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget signOutButton(BuildContext context) => Center(
        child: TextButton.icon(
          onPressed: () => context.read<AuthBloc>().add(const SignOutPressed()),
          icon: const Icon(IconlyBroken.logout, size: 32.0),
          label: const Text('Sign out'),
        ),
      );
}
