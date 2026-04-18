import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gap/gap.dart';
import 'package:target/core/constants/style_constants.dart';
import 'package:target/modules/profile/controllers/profile_controller.dart';

class ProfileCard extends StatelessWidget {
  ProfileCard({super.key});

  final profileController = ProfileController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: StyleConstants.primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Row(
            spacing: 10,
            children: [
              Gap(3),
              Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
                size: 65,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      profileController.userName,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Observer(
                      builder: (_) => Text(
                        'Registros criados: ${profileController.infoCount}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 20,
          width: double.infinity,
          decoration: BoxDecoration(
            color: StyleConstants.darkPrimaryColor,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25)),
          ),
        ),
      ],
    );
  }
}
