import 'package:flutter/material.dart';

import '../../../common/widgets/app_bar_leading.dart';

class LanguageSettings extends StatelessWidget {
  const LanguageSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AppBarLeading(),
        title: const Text('Language'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Column(
          children: [
            CheckboxListTile(title: const Text('English'), value: true, onChanged: (value) {}),
            // CheckboxListTile(title: const Text('Français'), value: false, onChanged: (value) {}),
            // CheckboxListTile(title: const Text('العربية'), value: false, onChanged: (value) {}),
          ],
        ),
      ),
    );
  }
}
