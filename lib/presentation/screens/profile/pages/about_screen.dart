import 'package:flutter/material.dart';

import '../../../common/widgets/app_bar_leading.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarLeading(),
        title: const Text('About'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Center(
                child: FractionallySizedBox(
                  heightFactor: .75,
                  widthFactor: .75,
                  child: Image.asset(
                    'assets/logos/circle_logo.png',
                  ),
                ),
              ),
            ),
            Text('The Tulip Manager', style: Theme.of(context).textTheme.headlineLarge),
          ],
        ),
      ),
    );
  }
}
