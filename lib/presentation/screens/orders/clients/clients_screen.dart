import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/orders/clients_watcher/clients_watcher_bloc.dart';
import '../../../../injectable.dart';
import '../../../common/widgets/custom_flushbar.dart';
import '../../../common/widgets/progress_indicator.dart';

class ClientsScreen extends StatelessWidget {
  const ClientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ClientsWatcherBloc>()..add(const ClientsWatcherEvent.watchClientsStarted()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Clients')),
        body: BlocBuilder<ClientsWatcherBloc, ClientsWatcherState>(
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: state.inProgress
                      ? const RiveProgressIndicator()
                      : state.failureOrClientsOption.fold(
                          () => const SizedBox(),
                          (failureOrOrders) => failureOrOrders.fold(
                            (failure) => Text('Something went wrong: ${failure.message}'),
                            (clients) => clients.isEmpty()
                                ? const Text('You have no clients yet 🤷‍♂️')
                                : ListView.builder(
                                    shrinkWrap: true,
                                    primary: false,
                                    itemCount: clients.size,
                                    itemBuilder: (context, index) => ListTile(
                                      // horizontalTitleGap: 4.0,
                                      trailing: Center(
                                        heightFactor: 1,
                                        widthFactor: 1,
                                        child: Text(clients[index].clientWilaya.wilayaName),
                                      ),
                                      enabled: !state.inProgress,
                                      title: Text(clients[index].clientName.getOrCrash()),
                                      subtitle: Text(clients[index].clientPhoneNumber.getOrCrash()),
                                      onTap: () => CustomFlushBar().showCustomFlushBar(
                                        context: context,
                                        message: 'You will be able to edit and delete clients soon.',
                                      ),
                                      leading: CircleAvatar(
                                        backgroundColor: Theme.of(context).colorScheme.background,
                                        backgroundImage: CachedNetworkImageProvider(
                                          'https://robohash.org/${clients[index].clientId?.getOrCrash()}_${clients[index].clientPhoneNumber.getOrCrash()}.png?set=set4&size=256x256',
                                        ),
                                      ),
                                    ),
                                  ),
                          ),
                        ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
