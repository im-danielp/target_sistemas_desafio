import 'package:flutter/material.dart';
import 'package:target/core/constants/style_constants.dart';

class DialogConfirmation extends StatelessWidget {
  final String msg;

  const DialogConfirmation({
    super.key,
    required this.msg,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(16),
      content: Column(
        spacing: 20,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Confirmação',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(msg, textAlign: TextAlign.center),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 235, 235, 235),
                  ),
                  onPressed: () => Navigator.pop(context, false),
                  child: Text('Não', style: TextStyle(color: StyleConstants.textColor)),
                ),
              ),
              Expanded(
                child: FilledButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: Text('Sim'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
