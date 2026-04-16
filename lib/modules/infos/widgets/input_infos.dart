import 'package:flutter/material.dart';
import 'package:target/core/locator/locator.dart';
import 'package:target/core/mobx/info_store.dart';
import 'package:target/core/models/info_model.dart';

class InputInfos extends StatelessWidget {
  InputInfos({super.key});

  final controller = TextEditingController();
  final infoStore = getIt<InfoStore>();

  void mountAndAddInfo() {
    final info = InfoModel(
      id: infoStore.nextId,
      description: controller.text,
    );

    infoStore.addInfo(info);
    controller.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            maxLines: 4,
            minLines: 1,
          ),
        ),
        FilledButton(
          onPressed: () => mountAndAddInfo(),
          child: Icon(Icons.add),
        ),
      ],
    );
  }
}
