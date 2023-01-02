import 'package:flutter/material.dart';

import 'progress_indicator.dart';

class ProgressOverlay extends StatelessWidget {
  final Widget child;
  final bool inProgress;
  const ProgressOverlay({super.key, required this.child, required this.inProgress});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          child: !inProgress
              ? const SizedBox()
              : Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Theme.of(context).primaryColor.withOpacity(.07),
                  child: const Center(
                    child: FractionallySizedBox(
                      widthFactor: .2,
                      heightFactor: .2,
                      child: RiveProgressIndicator(),
                    ),
                  ),
                ),
        ),
      ],
    );
  }
}
