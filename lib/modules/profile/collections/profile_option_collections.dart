import 'package:flutter/material.dart';
import 'package:target/modules/profile/controllers/profile_controller.dart';
import 'package:target/modules/profile/models/profile_option_model.dart';

abstract class ProfileOptionCollections {
  // Agora é um método que recebe o contexto da tela!
  static List<ProfileOptionModel> getOptions(BuildContext context) {
    final profileController = ProfileController();

    return [
      ProfileOptionModel(
        title: 'Limpar registros',
        icon: Icons.auto_delete_outlined,
        action: () => profileController.handdleClearInfos(context),
      ),
      ProfileOptionModel(
        title: 'Excluir conta',
        icon: Icons.person_off_outlined,
        action: () => profileController.handdleDeleteAccount(context),
      ),
      ProfileOptionModel(
        title: 'Sair da conta',
        icon: Icons.logout,
        action: () => profileController.handdleLogout(context),
      ),
    ];
  }
}
