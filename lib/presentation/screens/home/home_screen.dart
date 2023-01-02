import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' show none;
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/auth/auth_bloc/auth_bloc.dart';
import '../../common/routes/app_router.gr.dart';
import '../../common/theme/icons.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/home_cards.dart';
import 'widgets/orders_list_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late ScrollController _scrollController;
  late AnimationController _fabAnimationController;

  @override
  void initState() {
    _scrollController = ScrollController(keepScrollOffset: true);
    _scrollController.addListener(_onScrollEvent);

    _fabAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    super.initState();
  }

  void _onScrollEvent() {
    if (_scrollController.position.pixels == 0) _fabAnimationController.reverse();
    if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) _fabAnimationController.forward();
    if (_scrollController.position.userScrollDirection == ScrollDirection.forward) _fabAnimationController.reverse();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _fabAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => const SizedBox(),
          inProgress: (_) => const Center(child: CircularProgressIndicator()),
          authenticated: (state) => Scaffold(
            appBar: HomeAppBar(user: state.user),
            body: SingleChildScrollView(
              controller: _scrollController,
              padding: const EdgeInsets.symmetric(horizontal: .0, vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: RichText(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      text: TextSpan(
                        text: 'Hello\n',
                        style: Theme.of(context).textTheme.displaySmall?.copyWith(
                              color: Theme.of(context).colorScheme.onBackground,
                            ),
                        children: [
                          TextSpan(
                            text:
                                '${state.user.displayName == null ? 'Tulip' : (state.user.displayName!.split(' ')[0])} 🌷',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  const HomeCards(),
                  const OrdersListBuilder(),
                ],
              ),
            ),
            floatingActionButton: SlideTransition(
              position: Tween(
                begin: Offset.zero,
                end: const Offset(.0, 2.0),
              ).animate(_fabAnimationController),
              child: FloatingActionButton.extended(
                label: const Text('New Order'),
                icon: const Icon(IconlyBold.plus),
                onPressed: () => context.router.push(NewOrderScreenRoute(orderIdOption: none())),
              ),
            ),
          ),
        );
      },
    );
  }
}
