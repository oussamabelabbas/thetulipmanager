import 'package:flutter/material.dart';

class ProgressOverlay extends StatelessWidget {
  final Widget child;
  final bool inProgress;
  const ProgressOverlay({super.key, required this.child, required this.inProgress});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (inProgress)
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Theme.of(context).primaryColor.withOpacity(.07),
            child: const Center(
              child: Card(
                elevation: 8.0,
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: SizedBox.square(
                    dimension: 64.0,
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
