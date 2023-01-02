import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/orders/new_order_form/new_order_form_bloc.dart';
import '../../../../../domain/orders/order_task.dart';
import '../../../../../domain/orders/product.dart';
import '../../../../common/routes/app_router.gr.dart';

class TasksForm extends StatelessWidget {
  TasksForm({super.key});

  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: BlocBuilder<NewOrderFormBloc, NewOrderFormState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Tasks', style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 8.0),
              Text('List of client\'s requirements ${state.orderTasks.length}',
                  style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: 12.0),
              if (state.orderTasks.isNotEmpty)
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: state.orderTasks.length,
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    OrderTask task = state.orderTasks[index];
                    return Dismissible(
                      key: ValueKey(task.taskId),
                      background: Card(
                        color: Theme.of(context).colorScheme.error,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: TextButton.icon(
                              style: ButtonStyle(
                                foregroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.onError),
                              ),
                              onPressed: () {},
                              icon: const Icon(Icons.delete_forever_rounded),
                              label: const Text('Deleting this task'),
                            ),
                          ),
                        ),
                      ),
                      direction: DismissDirection.endToStart,
                      dismissThresholds: const {DismissDirection.endToStart: .75},
                      onDismissed: (_) => context.read<NewOrderFormBloc>().add(
                            NewOrderFormEvent.taskDeleted(taskId: task.taskId),
                          ),
                      confirmDismiss: (_) async {
                        if (state.orderTasks.length <= 1) return false;
                        return await showDialog<bool?>(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Remove Task'),
                            content: const Text('Are you sure you want to remove this task?'),
                            actions: [
                              TextButton(
                                onPressed: () => context.router.pop(false),
                                child: const Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => context.router.pop(true),
                                child: const Text('Remove'),
                              ),
                            ],
                          ),
                        );
                      },
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: ExpansionTile(
                          tilePadding: const EdgeInsets.symmetric(horizontal: 8.0),
                          childrenPadding: const EdgeInsets.symmetric(vertical: 8.0),
                          expandedCrossAxisAlignment: CrossAxisAlignment.center,
                          leading: CircleAvatar(
                            backgroundColor: Theme.of(context).colorScheme.background,
                            foregroundColor: Theme.of(context).colorScheme.primary,
                            backgroundImage: task.product.productImagePath.isEmpty
                                ? null
                                : CachedNetworkImageProvider(task.product.productImagePath),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(64.0),
                              child: task.product.productImagePath.isEmpty ? const Icon(Icons.image_rounded) : null,
                              onTap: () => context.router.push(ProductsScreenRoute(shouldReturnProduct: true)).then(
                                    (product) => product is! Product
                                        ? null
                                        : context.read<NewOrderFormBloc>().add(
                                              NewOrderFormEvent.taskProductChanged(
                                                taskId: task.taskId,
                                                product: product,
                                              ),
                                            ),
                                  ),
                            ),
                          ),
                          title: Text(
                            task.product.productName.isEmpty ? 'No product selected yet' : task.product.productName,
                          ),
                          subtitle: task.taskDescription.isEmpty
                              ? const Text('Empty description')
                              : Text(task.taskDescription, maxLines: 2),
                          children: [
                            TextFormField(
                              maxLines: null,
                              key: ValueKey(task.taskId),
                              keyboardType: TextInputType.multiline,
                              textCapitalization: TextCapitalization.sentences,
                              initialValue: task.taskDescription,
                              onChanged: (taskDescription) => context.read<NewOrderFormBloc>().add(
                                    NewOrderFormEvent.taskDescriptionChanged(
                                      taskId: task.taskId,
                                      taskDescription: taskDescription,
                                    ),
                                  ),
                              validator: (_) => task.taskDescription.isEmpty ? 'Task can not be empty' : null,
                              decoration: const InputDecoration(
                                filled: false,
                                labelText: 'Description (Optional)',
                                prefixIcon: Icon(Icons.list_alt_rounded),
                                hintText: 'Make it 30x20cm with Red Color.',
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.zero,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              const Divider(),
              Center(
                child: TextButton.icon(
                  onPressed: () => context.read<NewOrderFormBloc>().add(const NewOrderFormEvent.taskAdded()),
                  label: const Text('Add Task'),
                  icon: const Icon(Icons.add_task_rounded),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
