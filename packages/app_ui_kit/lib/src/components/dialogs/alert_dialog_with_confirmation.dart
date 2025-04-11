import 'package:flutter/material.dart';

class AlertDialogWithConfirmation extends StatelessWidget {
  const AlertDialogWithConfirmation({
    required this.title,
    required this.confirmationText,
    required this.rejectionText,
    this.text,
    this.onConfirm,
    this.onReject,
    super.key,
  });
  final String title;
  final String? text;
  final String confirmationText;
  final String rejectionText;
  final Function()? onConfirm;
  final VoidCallback? onReject;

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      content: text != null ? Text(text ?? '') : const SizedBox.shrink(),
      actions: <Widget>[
        TextButton(
          onPressed: onReject,
          child: Text(rejectionText),
        ),
        TextButton(
          onPressed: onConfirm,
          child: Text(confirmationText),
        ),
      ],
    );
  }
}
