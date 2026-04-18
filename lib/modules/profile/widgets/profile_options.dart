import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:target/modules/profile/collections/profile_option_collections.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final options = ProfileOptionCollections.getOptions(context);

    return Expanded(
      child: ListView.separated(
        itemCount: options.length,
        separatorBuilder: (context, index) => Gap(15),
        itemBuilder: (context, index) {
          final option = options[index];

          return ListTile(
            title: Text(option.title),
            leading: Icon(option.icon),
            onTap: option.action,
          );
        },
      ),
    );
  }
}
