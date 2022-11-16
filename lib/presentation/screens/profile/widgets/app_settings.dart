import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../application/theme/theme_bloc/theme_bloc.dart';
import '../../../common/routes/app_router.gr.dart';
import '../../../common/theme/theme.dart';

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
          children: [
            BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return SizedBox(
                  height: 64.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    itemCount: TheTulipThemes.themes.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 12.0),
                    itemBuilder: (_, index) => Container(
                      height: 64.0,
                      width: 64.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: state.theme == TheTulipThemes.themes[index]
                            ? Border.all(color: TheTulipThemes.themes[index].primaryColor)
                            : null,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: const [.5, .5],
                          colors: [
                            TheTulipThemes.themes[index].colorScheme.primary,
                            TheTulipThemes.themes[index].scaffoldBackgroundColor,
                          ],
                        ),
                      ),
                      child: InkWell(
                        onTap: () =>
                            context.read<ThemeBloc>().add(ThemeChanged(newTheme: TheTulipThemes.themes[index])),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
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
