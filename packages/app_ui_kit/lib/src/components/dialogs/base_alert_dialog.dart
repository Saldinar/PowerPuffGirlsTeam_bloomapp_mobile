import 'package:flutter/material.dart';

class BaseAlertDialog extends StatelessWidget {
  const BaseAlertDialog({
    required this.title,
    required this.onPressed,
    super.key,
  });
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      actions: <Widget>[
        TextButton(
          onPressed: onPressed,
          child: const Text('Ok'),
        ),
      ],
    );
  }
}
