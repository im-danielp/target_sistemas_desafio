import 'package:flutter/material.dart';
import 'package:target/core/constants/style_constants.dart';
import 'package:target/modules/profile/widgets/profile_options.dart';
import 'package:target/modules/profile/widgets/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 20,
        children: [
          ProfileCard(),
          Divider(color: StyleConstants.secondaryColor),
          ProfileOptions(),
        ],
      ),
    );
  }
}
