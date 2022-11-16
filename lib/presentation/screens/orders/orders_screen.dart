import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/orders/orders_actor/orders_actor_bloc.dart';
import '../../../../../injectable.dart';
import '../../common/routes/app_router.gr.dart';
import '../../common/theme/icons.dart';
import '../../common/widgets/progress_overlay.dart';
import 'widgets/archived_orders_page.dart';
import 'widgets/done_orders_page.dart';
import 'widgets/active_orders_page.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<OrdersActorBloc>()),
      ],
      child: DefaultTabController(
        length: 3,
        child: BlocConsumer<OrdersActorBloc, OrdersActorState>(
          listener: (context, state) {
            state.failureOrSuccessOption.fold(
              () => null,
              (failureOrSuccess) => failureOrSuccess.fold(
                (f) => Flushbar(
                  message: f.message,
                  backgroundColor: Colors.redAccent,
                  messageColor: Colors.white,
                ).show(context),
                (success) => success.maybeMap(
                  orElse: () => null,
                  orderDeleted: (success) => Flushbar(
                    message: 'Order ${success.id} was deleted.',
                    backgroundColor: Colors.greenAccent,
                    messageColor: Colors.white,
                  ).show(context),
                ),
              ),
            );
          },
          builder: (context, state) {
            return ProgressOverlay(
              inProgress: state.isBusy,
              child: Scaffold(
                floatingActionButton: FloatingActionButton(
                  onPressed: () => context.router.push(NewOrderScreenRoute(orderIdOption: none())),
                  child: const Icon(IconlyBroken.paper_plus),
                ),
                appBar: AppBar(
                  title: const Text('My Orders'),
                  bottom: TabBar(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    labelColor: Theme.of(context).colorScheme.primary,
                    indicatorColor: Theme.of(context).colorScheme.primary,
                    unselectedLabelColor: Theme.of(context).unselectedWidgetColor,
                    splashBorderRadius: BorderRadius.circular(24.0),
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    tabs: const [
                      Tab(
                        icon: Icon(TheTulipIcons.icon_dark),
                        text: 'Active',
                      ),
                      Tab(
                        icon: Icon(Icons.done_all_rounded),
                        text: 'Done',
                      ),
                      Tab(
                        icon: Icon(Icons.archive_rounded),
                        text: 'Archived',
                      ),
                    ],
                  ),
                ),
                body: const TabBarView(
                  children: [
                    ActiveOrdersPage(),
                    DoneOrdersPage(),
                    ArchivedOrdersPage(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
