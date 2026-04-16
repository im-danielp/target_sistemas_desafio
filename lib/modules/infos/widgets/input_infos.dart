import 'package:flutter/material.dart';
import 'package:target/modules/infos/controllers/infos_controller.dart';

class InputInfos extends StatelessWidget {
  InputInfos({super.key});

  final descriptionController = TextEditingController();
  final infosController = InfosController();

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        Expanded(
          child: TextField(
            controller: descriptionController,
            maxLines: 4,
            minLines: 1,
          ),
        ),
        FilledButton(
          onPressed: () {
            infosController.handleAddInfo(descriptionController.text);
            descriptionController.text = '';
          },
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}
