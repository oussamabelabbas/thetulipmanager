import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class CustomFlushBar {
  void showCustomFlushBar({
    required BuildContext context,
    required String message,
    Icon? icon,
    Color? backgroundColor,
    Color? foregroundColor,
  }) =>
      Flushbar(
        message: message,
        icon: icon,
        shouldIconPulse: true,
        margin: const EdgeInsets.all(16.0),
        flushbarStyle: FlushbarStyle.FLOATING,
        borderRadius: BorderRadius.circular(32.0),
        duration: const Duration(milliseconds: 2000),
        messageColor: foregroundColor ?? Theme.of(context).colorScheme.primary,
        backgroundColor: backgroundColor ?? Theme.of(context).colorScheme.onPrimary,
      ).show(context);
}
