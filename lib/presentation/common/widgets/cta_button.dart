import 'package:flutter/material.dart';

class CTAButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget label;
  final Widget icon;
  const CTAButton({
    super.key,
    this.onPressed,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(double.infinity, 56.0)),
      ),
      onPressed: onPressed,
      label: label,
      icon: icon,
    );
  }
}
