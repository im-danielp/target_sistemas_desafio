import 'package:flutter/material.dart';
import 'package:target/modules/infos/controllers/infos_controller.dart';
import 'package:target/core/models/info_model.dart';

class DialogEditInfos extends StatelessWidget {
  final InfoModel info;

  DialogEditInfos({super.key, required this.info});

  final descriptionController = TextEditingController();
  final infosController = InfosController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Editar informação ID: ${info.id}'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 25,
        children: [
          Text(info.description, style: TextStyle(fontStyle: FontStyle.italic)),
          TextField(controller: descriptionController),
          SizedBox(
            width: double.maxFinite,
            child: FilledButton(
              onPressed: () {
                infosController.handleEditInfo(info, descriptionController.text);
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
