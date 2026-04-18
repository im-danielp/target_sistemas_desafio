import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:target/core/constants/style_constants.dart';
import 'package:target/modules/profile/collections/profile_option_collections.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final options = ProfileOptionCollections.getOptions(context);

    return Expanded(
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        itemCount: options.length,
        separatorBuilder: (context, index) => Gap(20),
        itemBuilder: (context, index) {
          final option = options[index];

          return ListTile(
            title: Text(option.title, style: TextStyle(fontSize: 14)),
            leading: Icon(option.icon),
            onTap: option.action,
            dense: true,
            tileColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(8),
              side: BorderSide(color: StyleConstants.outlineBorderColor),
            ),
          );
        },
      ),
    );
  }
}
