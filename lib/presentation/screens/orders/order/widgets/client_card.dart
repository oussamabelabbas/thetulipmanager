import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../domain/orders/client.dart';
import '../../../../common/theme/icons.dart';

class ClientCard extends StatelessWidget {
  final Client client;
  const ClientCard({super.key, required this.client});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Client', style: Theme.of(context).textTheme.titleMedium),
        Card(
          margin: const EdgeInsets.symmetric(vertical: 4.0),
          child: Column(
            children: [
              ListTile(
                leading: const Center(widthFactor: 1, child: Text('Name')),
                title: Align(
                  alignment: Alignment.centerRight,
                  child: Text(client.clientName.getOrCrash()),
                ),
              ),
              ListTile(
                leading: const Center(widthFactor: 1, child: Text('Wilaya')),
                title: Align(
                  alignment: Alignment.centerRight,
                  child: Text(client.clientWilaya.wilayaName),
                ),
              ),
              ListTile(
                leading: const Center(widthFactor: 1, child: Text('Address')),
                title: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    client.clientAddress,
                    style: Theme.of(context).textTheme.titleSmall,
                    maxLines: 2,
                  ),
                ),
              ),
              ListTile(
                leading: const Center(widthFactor: 1, child: Text('Phone number')),
                title: Align(
                  alignment: Alignment.centerRight,
                  child: Text(client.clientPhoneNumber.getOrCrash()),
                ),
                onTap: () async {
                  try {
                    if (!await launchUrl(Uri.parse('tel:${client.clientPhoneNumber.getOrCrash()}'))) {
                      throw 'Could not launch';
                    }
                  } catch (e) {
                    Flushbar(
                      message: 'Something went wrong',
                      shouldIconPulse: true,
                      margin: const EdgeInsets.all(16.0),
                      flushbarStyle: FlushbarStyle.FLOATING,
                      borderRadius: BorderRadius.circular(32.0),
                      duration: const Duration(milliseconds: 2510),
                      backgroundColor: Theme.of(context).colorScheme.error,
                      icon: Icon(IconlyBroken.info_circle, size: 32.0, color: Theme.of(context).colorScheme.onError),
                    ).show(context);
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
