import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../application/orders/new_order_form/new_order_form_bloc.dart';
import '../../../../domain/core/value_object.dart';
import '../../../../injectable.dart';
import '../../../common/theme/icons.dart';
import '../../../common/widgets/progress_overlay.dart';

class NewOrderScreen extends StatelessWidget {
  final Option<UniqueId> orderIdOption;
  const NewOrderScreen({super.key, required this.orderIdOption});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<NewOrderFormBloc>()..add(NewOrderFormEvent.started(orderIdOption: orderIdOption)),
      child: BlocConsumer<NewOrderFormBloc, NewOrderFormState>(
        listener: (context, state) {
          state.failureOrSuccessOption.fold(
            () => null,
            (failureOrSuccess) => failureOrSuccess.fold(
              (f) => Flushbar(
                message: f.message,
                backgroundColor: Theme.of(context).errorColor,
                messageColor: Colors.white,
              ).show(context),
              (success) => success.maybeMap(
                orElse: () => null,
                orderCreated: (_) => context.router.pop(),
              ),
            ),
          );
        },
        builder: (context, state) {
          return WillPopScope(
            onWillPop: () async {
              if (!context.read<NewOrderFormBloc>().state.inProgress) return true;
              Flushbar(
                message: 'Please wait until the upload is done, Thank you.',
                backgroundColor: Theme.of(context).primaryColor,
                messageColor: Colors.white,
              ).show(context);
              return false;
            },
            child: Scaffold(
              appBar: AppBar(
                title: const Text('New Order'),
                leading: IconButton(onPressed: context.router.pop, icon: const Icon(IconlyBroken.arrow___left_2)),
              ),
              body: ProgressOverlay(
                inProgress: state.inProgress,
                child: state.inProgress
                    ? const SizedBox()
                    : SingleChildScrollView(
                        padding: const EdgeInsets.all(16.0),
                        child: Form(
                          key: ValueKey(state.inProgress),
                          autovalidateMode: state.autovalidate ? AutovalidateMode.always : AutovalidateMode.disabled,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextFormField(
                                textCapitalization: TextCapitalization.sentences,
                                keyboardType: TextInputType.text,
                                initialValue: state.orderTitle,
                                onChanged: (orderTitle) => context
                                    .read<NewOrderFormBloc>()
                                    .add(NewOrderFormEvent.orderTitleChanged(orderTitle: orderTitle)),
                                validator: (_) => state.orderTitle.isEmpty ? 'Title can not be empty' : null,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.title_rounded),
                                  label: Text('Title'),
                                ),
                              ),
                              const SizedBox(height: 24.0),
                              TextFormField(
                                textCapitalization: TextCapitalization.words,
                                keyboardType: TextInputType.name,
                                initialValue: context
                                    .read<NewOrderFormBloc>()
                                    .state
                                    .clientName
                                    .failureOrValue
                                    .fold((l) => null, id),
                                onChanged: (clientName) => context
                                    .read<NewOrderFormBloc>()
                                    .add(NewOrderFormEvent.clientNameChanged(clientName: clientName)),
                                validator: (_) => state.clientName.failureOrValue.fold(
                                  (f) => f.error,
                                  (r) => null,
                                ),
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.person_rounded),
                                  label: Text('Client Name'),
                                ),
                              ),
                              const SizedBox(height: 24.0),
                              TextFormField(
                                keyboardType: TextInputType.phone,
                                initialValue: context
                                    .read<NewOrderFormBloc>()
                                    .state
                                    .clientPhoneNumber
                                    .failureOrValue
                                    .fold((l) => null, (v) => v.substring(4)),
                                onChanged: (clientPhoneNumber) => context.read<NewOrderFormBloc>().add(
                                    NewOrderFormEvent.clientPhoneNumberChanged(clientPhoneNumber: clientPhoneNumber)),
                                validator: (_) => state.clientPhoneNumber.failureOrValue.fold(
                                  (f) => '${f.error}: ${f.failedValue}',
                                  (r) => null,
                                ),
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.phone_rounded),
                                  prefixText: '+213',
                                  label: Text('Phone Number'),
                                ),
                              ),
                              const SizedBox(height: 24.0),
                              TextFormField(
                                maxLines: null,
                                keyboardType: TextInputType.multiline,
                                textCapitalization: TextCapitalization.sentences,
                                initialValue: state.orderDescription,
                                onChanged: (orderDescription) => context
                                    .read<NewOrderFormBloc>()
                                    .add(NewOrderFormEvent.orderDescriptionChanged(orderDescription: orderDescription)),
                                validator: (_) =>
                                    state.orderDescription.isEmpty ? 'Description Can nott be empty' : null,
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.mode_comment_rounded),
                                  label: Text('Description'),
                                ),
                              ),
                              const SizedBox(height: 24.0),
                              TextFormField(
                                readOnly: true,
                                key: UniqueKey(),
                                initialValue: DateFormat('dd MMMM yyyy').format(state.deliveryDate),
                                onTap: () async {
                                  FocusScope.of(context).unfocus();
                                  await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime.now().add(const Duration(days: 365)),
                                  ).then(
                                    (deliveryDate) {
                                      if (deliveryDate != null) {
                                        context.read<NewOrderFormBloc>().add(
                                              NewOrderFormEvent.deliveryDateChanged(deliveryDate: deliveryDate),
                                            );
                                      }
                                    },
                                  );
                                },
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.calendar_today_rounded),
                                  label: Text('Delivery Date'),
                                ),
                              ),
                              const SizedBox(height: 24.0),
                              TextFormField(
                                maxLines: null,
                                keyboardType: TextInputType.number,
                                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                initialValue: state.price.failureOrValue.fold((l) => null, id),
                                onChanged: (price) =>
                                    context.read<NewOrderFormBloc>().add(NewOrderFormEvent.priceChanged(price: price)),
                                validator: (_) => state.price.failureOrValue.fold(
                                  (f) => f.error,
                                  (r) => null,
                                ),
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.attach_money_rounded),
                                  suffixText: 'Dzd',
                                  label: Text('Price'),
                                ),
                              ),
                              const SizedBox(height: 24.0),
                              Text('Tasks', style: Theme.of(context).textTheme.titleMedium),
                              const SizedBox(height: 8.0),
                              if (state.tasks.isNotEmpty)
                                ...state.tasks.map(
                                  (task) => Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    child: TextFormField(
                                      maxLines: null,
                                      key: ValueKey(task.taskId),
                                      keyboardType: TextInputType.multiline,
                                      textCapitalization: TextCapitalization.sentences,
                                      initialValue: context
                                          .read<NewOrderFormBloc>()
                                          .state
                                          .tasks
                                          .firstWhere((element) => element.taskId == task.taskId)
                                          .description,
                                      onChanged: (taskDescription) => context.read<NewOrderFormBloc>().add(
                                            NewOrderFormEvent.taskDescriptionChanged(
                                                taskId: task.taskId, taskDescription: taskDescription),
                                          ),
                                      validator: (_) => context
                                              .read<NewOrderFormBloc>()
                                              .state
                                              .tasks
                                              .firstWhere((element) => element.taskId == task.taskId)
                                              .description
                                              .isEmpty
                                          ? 'Task can not be empty'
                                          : null,
                                      decoration: InputDecoration(
                                        prefixIcon: const Icon(Icons.check_box_outline_blank_rounded),
                                        suffixIcon: IconButton(
                                            onPressed: () => context
                                                .read<NewOrderFormBloc>()
                                                .add(NewOrderFormEvent.taskDeleted(taskId: task.taskId)),
                                            icon: const Icon(Icons.delete)),
                                        label: Text(task.taskId.getOrCrash()),
                                      ),
                                    ),
                                  ),
                                ),
                              Center(
                                child: TextButton.icon(
                                  onPressed: () =>
                                      context.read<NewOrderFormBloc>().add(const NewOrderFormEvent.taskAdded()),
                                  label: const Text('Add Task'),
                                  icon: const Icon(Icons.add_task_rounded),
                                ),
                              ),
                              const SizedBox(height: 24.0),
                              orderIdOption.fold(
                                () => ElevatedButton.icon(
                                  onPressed: () => context
                                      .read<NewOrderFormBloc>()
                                      .add(const NewOrderFormEvent.confirmOrderPressed()),
                                  label: const Text('Confirm Order'),
                                  icon: const Icon(IconlyBroken.plus),
                                ),
                                (orderId) => ElevatedButton.icon(
                                  onPressed: () => context
                                      .read<NewOrderFormBloc>()
                                      .add(NewOrderFormEvent.updateOrderPressed(orderId: orderId)),
                                  label: const Text('Update Order'),
                                  icon: const Icon(IconlyBroken.plus),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
            ),
          );
        },
      ),
    );
  }
}
