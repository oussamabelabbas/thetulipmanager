import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../common/routes/app_router.gr.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final User user;
  const HomeAppBar({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        const SizedBox(width: 16.0),
        CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.background,
          foregroundColor: Theme.of(context).colorScheme.background,
          child: Image.asset(
            'assets/logos/circle_logo.png',
            fit: BoxFit.cover,
          ),
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: () => context.router.push(const ProfileRoute()),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: CachedNetworkImageProvider(
                    user.photoURL ?? 'https://robohash.org/${user.uid}.png?set=set4&size=256x256',
                  ),
                ),
                border: Border.all(width: 2.0, color: Theme.of(context).colorScheme.primary.withOpacity(.5)),
              ),
            ),
          ),
        ),
        const SizedBox(width: 16.0),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
