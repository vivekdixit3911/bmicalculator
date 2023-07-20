// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({required this.iconn, required this.onPressed});
  final IconData iconn;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: const Color(0xFF4C4F5E),
      shape: const CircleBorder(),
      elevation: 6.0,
      constraints: const BoxConstraints(
        minWidth: 56.0,
        maxWidth: double.infinity,
        minHeight: 56.0,
        maxHeight: double.infinity,
      ),
      child: Icon(iconn),
    );
  }
}
