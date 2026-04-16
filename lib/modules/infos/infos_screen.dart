import 'package:flutter/material.dart';
import 'package:target/modules/infos/widgets/input_infos.dart';
import 'package:target/modules/infos/widgets/list_infos.dart';

class InfosScreen extends StatelessWidget {
  const InfosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListInfos(),
          InputInfos(),
        ],
      ),
    );
  }
}
