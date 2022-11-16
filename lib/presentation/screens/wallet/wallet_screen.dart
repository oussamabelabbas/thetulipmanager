import 'package:flutter/material.dart';

import '../../common/theme/icons.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: FittedBox(
                child: Icon(
                  IconlyBroken.wallet,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            Text(
              'We are working on it. This feature will be available before you know it 👌',
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
