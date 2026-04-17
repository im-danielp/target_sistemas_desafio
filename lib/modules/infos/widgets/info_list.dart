import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:target/core/constants/style_constants.dart';
import 'package:target/core/models/info_model.dart';
import 'package:target/modules/infos/controllers/infos_controller.dart';
import 'package:target/modules/infos/widgets/info_button_action.dart';
import 'package:target/modules/infos/widgets/info_dialog_edit.dart';

class InfoList extends StatelessWidget {
  InfoList({super.key});

  final infosController = InfosController();

  void openEditInfo(BuildContext context, InfoModel info) {
    FocusManager.instance.primaryFocus?.unfocus();
    showDialog(
      context: context,
      builder: (context) => InfoDialogEdit(info: info),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: StyleConstants.outlineBorderColor),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Observer(
          builder: (_) => ListView.separated(
            itemCount: infosController.infos.length,
            separatorBuilder: (context, index) => Divider(
              color: StyleConstants.outlineBorderColor,
              height: 8,
            ),
            itemBuilder: (context, index) {
              final info = infosController.infos[index];

              return ListTile(
                title: Text(info.description),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                trailing: Row(
                  spacing: 10,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InfoButtonAction(
                      icon: Icons.mode_edit_outlined,
                      onTap: () => openEditInfo(context, info),
                    ),
                    InfoButtonAction(
                      icon: Icons.cancel_outlined,
                      onTap: () => infosController.handleRemoveInfo(info),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
