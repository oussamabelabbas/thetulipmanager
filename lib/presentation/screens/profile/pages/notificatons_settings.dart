import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../../../common/theme/icons.dart';
import '../../../common/widgets/app_bar_leading.dart';

class NotificationsSettings extends StatelessWidget {
  const NotificationsSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarLeading(),
        title: const Text('Notifications'),
        actions: [
          Switch(
            value: false,
            onChanged: (_) => Flushbar(
              message: 'Sorry! this feature will be available soon',
              shouldIconPulse: true,
              margin: const EdgeInsets.all(16.0),
              flushbarStyle: FlushbarStyle.FLOATING,
              borderRadius: BorderRadius.circular(32.0),
              duration: const Duration(milliseconds: 2510),
              backgroundColor: Theme.of(context).colorScheme.secondary,
              messageColor: Theme.of(context).colorScheme.onSecondary,
              icon: Icon(IconlyBroken.info_circle, size: 32.0, color: Theme.of(context).colorScheme.onSecondary),
            ).show(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: const [
            SwitchListTile(
              title: Text('Deadline reminder'),
              subtitle: Text('Notifications to remind you that the deadline is approaching'),
              onChanged: null,
              value: false,
            ),
            SwitchListTile(
              title: Text('Order deadline timout'),
              subtitle: Text('Get notified the day of the deadline'),
              onChanged: null,
              value: false,
            ),
            SwitchListTile(
              title: Text('New app update'),
              subtitle: Text('Never miss new features with the latest updates'),
              onChanged: null,
              value: false,
            ),
          ],
        ),
      ),
    );
  }
}
