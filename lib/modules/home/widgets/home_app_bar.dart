import 'package:flutter/material.dart';
import 'package:target/core/collections/user_collection.dart';
import 'package:target/core/constants/assets_constants.dart';
import 'package:target/core/constants/style_constants.dart';
import 'package:target/core/services/locator_service.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  HomeAppBar({super.key});

  static final userCollection = getIt<UserCollection>();
  final userFirstName = userCollection.loggedUser!.name.split(' ').first;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            spacing: 15,
            children: [
              Image.asset(AssetsConstants.kTargetTinyLogo),
              Text.rich(
                style: TextStyle(fontSize: 20),
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Bem vindo, ',
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                    TextSpan(
                      text: userFirstName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: StyleConstants.secondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight - 15);
}
