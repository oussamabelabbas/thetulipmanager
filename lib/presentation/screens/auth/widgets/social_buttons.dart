import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(flex: 2),
        IconButton(
          onPressed: () => context.read<SignInFormBloc>().add(const ContinueWithGooglePressed()),
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(2.0),
            padding: MaterialStateProperty.all(const EdgeInsets.all(12.0)),
            shadowColor: MaterialStateProperty.all(Theme.of(context).shadowColor),
            surfaceTintColor: MaterialStateProperty.all(Colors.white),
            backgroundColor: MaterialStateProperty.all(Colors.white),
            side: Theme.of(context).brightness == Brightness.light
                ? null
                : MaterialStateProperty.all(const BorderSide(color: Color(0xFF4285F4), width: 2.0)),
          ),
          icon: Image.asset('assets/logos/G.png', height: 32.0),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(2.0),
            padding: MaterialStateProperty.all(const EdgeInsets.all(12.0)),
            shadowColor: MaterialStateProperty.all(Theme.of(context).shadowColor),
            surfaceTintColor: MaterialStateProperty.all(const Color(0xFF2374f2)),
            backgroundColor: MaterialStateProperty.all(const Color(0xFF2374f2)),
            side: Theme.of(context).brightness == Brightness.light
                ? null
                : MaterialStateProperty.all(const BorderSide(color: Color(0xFF2374f2), width: 2.0)),
          ),
          icon: Image.asset('assets/logos/F.png', height: 32.0),
        ),
        const Spacer(flex: 2),
      ],
    );
  }
}
