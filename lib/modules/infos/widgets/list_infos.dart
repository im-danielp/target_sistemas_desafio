import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:target/core/locator/locator.dart';
import 'package:target/core/mobx/info_store.dart';
import 'package:target/modules/infos/widgets/dialog_edit_info.dart';

class ListInfos extends StatelessWidget {
  ListInfos({super.key});

  final infoStore = getIt<InfoStore>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Observer(
        builder: (_) => ListView.builder(
          itemCount: infoStore.infos.length,
          itemBuilder: (context, index) {
            final info = infoStore.infos[index];

            return ListTile(
              title: Text(info.description),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () => showDialog(
                      context: context,
                      builder: (context) => DialogEditInfo(info: info),
                    ),
                    icon: Icon(Icons.mode_edit_outlined),
                  ),
                  IconButton(
                    onPressed: () => infoStore.removeInfo(info),
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
