import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../theme/icons.dart';

class AppBarLeading extends StatelessWidget {
  const AppBarLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(IconlyBroken.arrow___left_2),
      onPressed: context.router.pop,
    );
  }
}
