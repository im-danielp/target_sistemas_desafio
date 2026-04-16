import 'package:flutter/material.dart';
import 'package:target/core/locator/locator.dart';
import 'package:target/core/mobx/info_store.dart';
import 'package:target/core/models/info_model.dart';

class DialogEditInfo extends StatelessWidget {
  final InfoModel info;

  DialogEditInfo({super.key, required this.info});

  final controller = TextEditingController();
  final infoStore = getIt<InfoStore>();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Editar informação ID: ${info.id}'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 25,
        children: [
          Text(info.description, style: TextStyle(fontStyle: FontStyle.italic)),
          TextField(controller: controller),
          SizedBox(
            width: double.maxFinite,
            child: FilledButton(
              onPressed: () {
                infoStore.editInfo(info.id, controller.text);
                Navigator.pop(context);
              },
              child: Text('Editar'),
            ),
          ),
        ],
      ),
    );
  }
}
