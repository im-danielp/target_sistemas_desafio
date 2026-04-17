import 'package:flutter/material.dart';
import 'package:target/modules/infos/widgets/info_input.dart';
import 'package:target/modules/infos/widgets/info_list.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 20,
        children: [
          InfoList(),
          InfoInput(),
        ],
      ),
    );
  }
}
