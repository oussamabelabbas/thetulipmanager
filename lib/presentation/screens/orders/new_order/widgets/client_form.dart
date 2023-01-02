import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' show id, none, some;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thetulipmanager/presentation/common/widgets/progress_indicator.dart';

import '../../../../../application/orders/client_fetcher/client_fetcher_bloc.dart';
import '../../../../../application/orders/new_order_form/new_order_form_bloc.dart';
import '../../../../../domain/orders/client.dart';
import '../../../../../injectable.dart';

class ClientForm extends StatelessWidget {
  const ClientForm({super.key});

  bool _enabled(BuildContext context) => context.read<ClientFetcherBloc>().state.failureOrClientOption.fold(
        () => false,
        (failureOrClient) => failureOrClient.fold(
          (_) => false,
          (client) => client.isNone(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ClientFetcherBloc>(),
      child: BlocConsumer<ClientFetcherBloc, ClientFetcherState>(
        listener: (context, state) {
          state.failureOrClientOption.fold(
            () {
              context.read<NewOrderFormBloc>().add(
                    NewOrderFormEvent.oldClientChanged(oldClientOption: none()),
                  );
              context.read<NewOrderFormBloc>().add(
                    const NewOrderFormEvent.clientNameChanged(clientName: ''),
                  );
              context.read<NewOrderFormBloc>().add(
                    const NewOrderFormEvent.clientWilayaChanged(clientWilaya: null),
                  );
              context.read<NewOrderFormBloc>().add(
                    const NewOrderFormEvent.clientAddressChanged(clientAddress: ''),
                  );
            },
            (failureOrClient) => failureOrClient.fold(
              (_) => null,
              (client) => client.fold(
                () => null,
                (client) {
                  context.read<NewOrderFormBloc>().add(
                        NewOrderFormEvent.oldClientChanged(oldClientOption: some(client)),
                      );
                  context.read<NewOrderFormBloc>().add(
                        NewOrderFormEvent.clientNameChanged(clientName: client.clientName.getOrCrash()),
                      );
                  context.read<NewOrderFormBloc>().add(
                        NewOrderFormEvent.clientWilayaChanged(clientWilaya: client.clientWilaya),
                      );
                  context.read<NewOrderFormBloc>().add(
                        NewOrderFormEvent.clientAddressChanged(clientAddress: client.clientAddress),
                      );
                },
              ),
            ),
          );
        },
        builder: (context, clientState) {
          return BlocBuilder<NewOrderFormBloc, NewOrderFormState>(
            builder: (context, formState) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: .0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Client', style: Theme.of(context).textTheme.titleLarge),
                          const SizedBox(height: 8.0),
                          context.read<ClientFetcherBloc>().state.inProgress
                              ? const SizedBox.square(dimension: 16.0, child: RiveProgressIndicator())
                              : Text(
                                  context.read<ClientFetcherBloc>().state.failureOrClientOption.fold(
                                        () =>
                                            'We will automatically check if this is an old client when you enter a valid phone number.',
                                        (failureOrClient) => failureOrClient.fold(
                                          (failure) =>
                                              'Something went wrong: ${failure.message}\nplease rewrite the phone number to try again',
                                          (client) => client.fold(
                                            () => 'Looks like it is a new client, he will be save automatically.',
                                            (client) => 'We found him!',
                                          ),
                                        ),
                                      ),
                                  style: Theme.of(context).textTheme.bodySmall,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 5,
                                ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      initialValue: context.read<NewOrderFormBloc>().state.clientPhoneNumber.failureOrValue.fold(
                            (l) => null,
                            (v) => v.substring(4),
                          ),
                      onChanged: (clientPhoneNumber) {
                        context.read<NewOrderFormBloc>().add(
                              NewOrderFormEvent.clientPhoneNumberChanged(clientPhoneNumber: '+213$clientPhoneNumber'),
                            );
                        context.read<ClientFetcherBloc>().add(
                              ClientFetcherEvent.clientPhoneNumberChanged(clientPhoneNumber: '+213$clientPhoneNumber'),
                            );
                      },
                      validator: (_) => context.read<NewOrderFormBloc>().state.clientPhoneNumber.failureOrValue.fold(
                            (f) => '${f.error}: ${f.failedValue}',
                            (r) => null,
                          ),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone_rounded),
                        prefixText: '+213',
                        label: Text('Phone Number'),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      key: ValueKey(context.read<ClientFetcherBloc>().state.failureOrClientOption),
                      enabled: _enabled(context),
                      textCapitalization: TextCapitalization.words,
                      keyboardType: TextInputType.name,
                      initialValue:
                          context.read<NewOrderFormBloc>().state.clientName.failureOrValue.fold((l) => '', id),
                      onChanged: (clientName) => context
                          .read<NewOrderFormBloc>()
                          .add(NewOrderFormEvent.clientNameChanged(clientName: clientName)),
                      validator: (_) => context.read<NewOrderFormBloc>().state.clientName.failureOrValue.fold(
                            (f) => f.error,
                            (r) => null,
                          ),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.person_rounded),
                        label: Text('Name'),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      enabled: _enabled(context),
                      key: ObjectKey(context.read<NewOrderFormBloc>().state.clientWilaya),
                      readOnly: true,
                      keyboardType: TextInputType.name,
                      textCapitalization: TextCapitalization.words,
                      initialValue: context.read<NewOrderFormBloc>().state.clientWilaya?.codeName,
                      validator: (_) => context.read<NewOrderFormBloc>().state.clientWilaya == null
                          ? 'You must presize the wilaya of the client'
                          : null,
                      onTap: () => showDialog<Wilaya>(
                        context: context,
                        builder: (context) => SimpleDialog(
                          title: const Text('Wilaya'),
                          children: Wilaya.values
                              .map(
                                (wilaya) => ListTile(
                                  title: Text(wilaya.wilayaName),
                                  horizontalTitleGap: .0,
                                  onTap: () => context.router.pop(wilaya),
                                  leading: Center(widthFactor: 1, child: Text('${wilaya.wilayaCode}')),
                                ),
                              )
                              .toList(),
                        ),
                      ).then(
                        (wilaya) => context
                            .read<NewOrderFormBloc>()
                            .add(NewOrderFormEvent.clientWilayaChanged(clientWilaya: wilaya)),
                      ),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.map_rounded),
                        suffixIcon: Icon(Icons.arrow_drop_down_rounded),
                        label: Text('Wilaya'),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    TextFormField(
                      key: ObjectKey(context.read<ClientFetcherBloc>().state.failureOrClientOption),
                      enabled: _enabled(context),
                      textCapitalization: TextCapitalization.sentences,
                      keyboardType: TextInputType.name,
                      initialValue: context.read<NewOrderFormBloc>().state.clientAddress,
                      onChanged: (address) => context
                          .read<NewOrderFormBloc>()
                          .add(NewOrderFormEvent.clientAddressChanged(clientAddress: address)),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.maps_home_work_rounded),
                        label: Text('Address (Optional)'),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
