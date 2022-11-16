import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).errorColor,
      appBar: AppBar(
        title: const Text('Something went wrong'),
      ),
    );
  }
}
