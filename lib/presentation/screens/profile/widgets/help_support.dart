import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../common/routes/app_router.gr.dart';

class HelpSupport extends StatelessWidget {
  const HelpSupport({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            'Help & Support',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        ListTile(
          onTap: () {},
          leading: const Center(widthFactor: 1, child: Icon(Icons.question_answer_rounded)),
          trailing: const Center(widthFactor: 1, child: Icon(Icons.chevron_right_rounded)),
          title: const Text('Q&A'),
          subtitle: const Text('Answers for our most asked questions'),
        ),
        ListTile(
          onTap: () {},
          leading: const Center(widthFactor: 1, child: Icon(Icons.contact_support_rounded)),
          trailing: const Center(widthFactor: 1, child: Icon(Icons.chevron_right_rounded)),
          title: const Text('Contact support'),
          subtitle: const Text('Contact our team'),
        ),
        ListTile(
          onTap: () => context.router.push(const AboutScreenRoute()),
          leading: const Center(widthFactor: 1, child: Icon(Icons.info_rounded)),
          trailing: const Center(widthFactor: 1, child: Icon(Icons.chevron_right_rounded)),
          title: const Text('About'),
          subtitle: const Text('Everything about The Tulip Manager'),
        ),
        ListTile(
          onTap: () {},
          leading: const Center(widthFactor: 1, child: Icon(Icons.policy_rounded)),
          trailing: const Center(widthFactor: 1, child: Icon(Icons.chevron_right_rounded)),
          title: const Text('Our policy'),
          subtitle: const Text('Our privacy & policy rules'),
        ),
      ],
    );
  }
}
