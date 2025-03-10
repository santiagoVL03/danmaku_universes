import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String errorMessage;

  const ErrorDialog({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Error', style: TextStyle(color: Colors.red)),
      content: Text(errorMessage),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('OK'),
        ),
      ],
    );
  }
}

// Método para mostrar el diálogo en cualquier parte de la app
void showErrorDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (context) => ErrorDialog(errorMessage: message),
  );
}
