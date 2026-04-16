import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:target/modules/infos/controllers/infos_constants.dart';
import 'package:target/modules/infos/controllers/infos_controller.dart';
import 'package:target/modules/infos/widgets/dialog_edit_infos.dart';

class ListInfos extends StatelessWidget {
  ListInfos({super.key});

  final infosController = InfosController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Observer(
        builder: (_) => ListView.builder(
          itemCount: infosController.infos.length,
          itemBuilder: (context, index) {
            final info = infosController.infos[index];

            return ListTile(
              title: Text(info.description, style: InfosConstants.textStyle),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () => showDialog(
                      context: context,
                      builder: (context) => DialogEditInfos(info: info),
                    ),
                    icon: Icon(Icons.mode_edit_outlined),
                  ),
                  IconButton(
                    onPressed: () => infosController.handleRemoveInfo(info),
                    icon: Icon(Icons.cancel_outlined),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
