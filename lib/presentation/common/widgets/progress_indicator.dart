import 'dart:math';

import 'package:fluent_ui/fluent_ui.dart' as fluent;
import 'package:flutter/material.dart';

class RiveProgressIndicator extends StatelessWidget {
  const RiveProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return fluent.FluentTheme(
      data: fluent.ThemeData(),
      child: LayoutBuilder(builder: (context, constraints) {
        return Center(
          child: SizedBox.square(
            dimension: min(32.0, min(constraints.maxHeight, constraints.maxWidth)),
            child: FractionallySizedBox(
              widthFactor: .8,
              heightFactor: .8,
              alignment: Alignment.center,
              child: fluent.ProgressRing(
                backgroundColor: fluent.Colors.transparent,
                activeColor: Theme.of(context).colorScheme.primary,
              ),

              // CircularProgressIndicator(
              //   strokeWidth: .15 * min(constraints.maxHeight, constraints.maxWidth),
              // ),
            ),
          ),
        );
      }),
    );
  }
}
