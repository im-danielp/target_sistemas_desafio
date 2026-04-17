import 'package:flutter/material.dart';
import 'package:target/modules/infos/controllers/infos_controller.dart';

class InfoInput extends StatelessWidget {
  InfoInput({super.key});

  final formKey = GlobalKey<FormState>();
  final descriptionController = TextEditingController();
  final infosController = InfosController();

  void addInfo() {
    if (formKey.currentState!.validate()) {
      infosController.handleAddInfo(descriptionController.text);
      descriptionController.text = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          Expanded(
            child: TextFormField(
              controller: descriptionController,
              textCapitalization: TextCapitalization.sentences,
              maxLines: 3,
              minLines: 1,
              validator: (value) {
                if (value!.isEmpty) return 'Insira um texto antes de adicionar';
                return null;
              },
              decoration: InputDecoration(hintText: 'Digite algo...'),
            ),
          ),
          SizedBox(
            width: 48,
            height: 48,
            child: FilledButton(
              style: FilledButton.styleFrom(padding: EdgeInsets.zero),
              onPressed: addInfo,
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
