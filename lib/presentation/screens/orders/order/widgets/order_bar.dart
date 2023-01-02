// import 'package:another_flushbar/flushbar.dart';
// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../../../application/orders/order_watcher/order_watcher_bloc.dart';
// import '../../../../../application/orders/orders_actor/orders_actor_bloc.dart';
// import '../../../../common/theme/icons.dart';

// class OrderBar extends StatelessWidget with PreferredSizeWidget {
//   const OrderBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<OrdersActorBloc, OrdersActorState>(
//       listener: (context, state) {
//         state.failureOrSuccessOption.fold(
//           () => null,
//           (failureOrSuccess) => failureOrSuccess.fold(
//             (f) => Flushbar(
//               message: f.message,
//               backgroundColor: Colors.redAccent,
//               messageColor: Colors.white,
//             ).show(context),
//             (success) => success.maybeMap(
//               orElse: () => null,
//               orderDeleted: (_) => context.router.pop(),
//             ),
//           ),
//         );
//       },
//       child: BlocBuilder<OrderWatcherBloc, OrderWatcherState>(
//         builder: (context, state) {
//           return state.maybeMap(
//             orElse: () => AppBar(
//               leading: IconButton(onPressed: context.router.pop, icon: const Icon(IconlyBroken.arrow___left_2)),
//             ),
//             fetchsucceded: (state) => AppBar(
//               leading: IconButton(onPressed: context.router.pop, icon: const Icon(IconlyBroken.arrow___left_2)),
//               title: Text(state.order.orderTitle),
//               actions: [
//                 IconButton(
//                   onPressed: () => context.read<OrdersActorBloc>().add(DeleteOrder(orderId: orderId)),
//                   icon: const Icon(IconlyBroken.delete),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }
