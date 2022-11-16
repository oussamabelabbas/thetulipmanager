import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../common/routes/app_router.gr.dart';
import '../common/theme/icons.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeScreenRoute(),
        OrdersScreenRoute(),
        WalletScreenRoute(),
        ProfileScreenRoute(),
      ],
      builder: (context, child, animation) => FadeTransition(opacity: animation, child: child),
      bottomNavigationBuilder: (context, tabsRouter) => AnimatedBottomNavigationBar(
        height: 64.0,
        iconSize: 32.0,
        elevation: 80.0,
        splashRadius: 12.0,
        gapLocation: GapLocation.none,
        onTap: tabsRouter.setActiveIndex,
        activeIndex: tabsRouter.activeIndex,
        shadow: Shadow(
          blurRadius: 8.0,
          offset: const Offset(0, 0),
          color: Theme.of(context).colorScheme.primary.withOpacity(.12),
        ),
        activeColor: Theme.of(context).colorScheme.primary,
        inactiveColor: Theme.of(context).colorScheme.onBackground,
        backgroundColor: Theme.of(context).colorScheme.background,
        icons: [
          tabsRouter.activeIndex == 0 ? IconlyBold.home : IconlyBroken.home,
          tabsRouter.activeIndex == 1 ? IconlyBold.document : IconlyBroken.document,
          tabsRouter.activeIndex == 2 ? IconlyBold.wallet : IconlyBroken.wallet,
          tabsRouter.activeIndex == 3 ? IconlyBold.profile : IconlyBroken.profile,
        ],
      ),
    );
  }
}
