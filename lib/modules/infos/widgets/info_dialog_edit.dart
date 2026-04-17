import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:target/modules/infos/controllers/infos_controller.dart';
import 'package:target/core/models/info_model.dart';

class InfoDialogEdit extends StatelessWidget {
  final InfoModel info;

  InfoDialogEdit({super.key, required this.info});

  final formKey = GlobalKey<FormState>();
  final descriptionController = TextEditingController();
  final infosController = InfosController();

  void editInfo(BuildContext context) {
    if (formKey.currentState!.validate()) {
      infosController.handleEditInfo(info, descriptionController.text);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Editar informação', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('ID: ${info.id}', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Gap(10),
            Text('"${info.description}"', textAlign: TextAlign.center),
            Gap(10),
            TextFormField(
              controller: descriptionController,
              textCapitalization: TextCapitalization.sentences,
              minLines: 1,
              maxLines: 3,
              validator: (value) {
                if (value!.isEmpty) return 'Insira algo antes de editar';
                return null;
              },
              decoration: InputDecoration(hintText: 'Novo texto...'),
            ),
            SizedBox(
              width: double.maxFinite,
              child: FilledButton(
                onPressed: () => editInfo(context),
                child: Text('Editar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
