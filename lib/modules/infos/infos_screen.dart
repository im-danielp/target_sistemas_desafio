import 'package:flutter/material.dart';
import 'package:target/modules/infos/widgets/info_input.dart';
import 'package:target/modules/infos/widgets/info_list.dart';

class InfosScreen extends StatelessWidget {
  const InfosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InfoList(),
          InfoInput(),
        ],
      ),
    );
  }
}
