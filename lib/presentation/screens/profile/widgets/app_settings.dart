import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../common/routes/app_router.gr.dart';

class AppSettings extends StatelessWidget {
  const AppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            'App',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        ExpansionTile(
          leading: const Center(widthFactor: 1, child: Icon(Icons.color_lens_rounded)),
          title: const Text('Theme'),
          subtitle: const Text('Select the colors you want'),
          children: AdaptiveThemeMode.values
              .map(
                (mode) => ListTile(
                  selected: mode == AdaptiveTheme.of(context).mode,
                  onTap: () => AdaptiveTheme.of(context).setThemeMode(mode),
                  title: Text(mode.modeName),
                  trailing: Checkbox(
                    value: mode == AdaptiveTheme.of(context).mode,
                    onChanged: (_) => AdaptiveTheme.of(context).setThemeMode(mode),
                  ),
                  leading: Align(
                    alignment: Alignment.center,
                    heightFactor: 1,
                    widthFactor: 3,
                    child: Icon(
                      mode.isSystem
                          ? Icons.android_rounded
                          : mode.isLight
                              ? Icons.light_mode_rounded
                              : Icons.dark_mode_rounded,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        ListTile(
          onTap: () => context.router.push(const NotificationsSettingsRoute()),
          leading: const Center(widthFactor: 1, child: Icon(Icons.notifications_active_rounded)),
          trailing: const Center(widthFactor: 1, child: Icon(Icons.chevron_right_rounded)),
          title: const Text('Notifications'),
          subtitle: const Text('Never forget an order'),
        ),
        ListTile(
          onTap: () => context.router.push(const LanguageSettingsRoute()),
          leading: const Center(widthFactor: 1, child: Icon(Icons.language_rounded)),
          trailing: const Center(widthFactor: 1, child: Icon(Icons.chevron_right_rounded)),
          title: const Text('Language'),
          subtitle: const Text('English'),
        ),
      ],
    );
  }
}
