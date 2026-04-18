import 'package:flutter/material.dart';
import 'package:target/modules/profile/controllers/profile_controller.dart';
import 'package:target/modules/profile/models/profile_option_model.dart';

abstract class ProfileOptionCollections {
  final profileController = ProfileController();

  // Agora é um método que recebe o contexto da tela!
  static List<ProfileOptionModel> getOptions(BuildContext context) {
    return [
      ProfileOptionModel(
        title: 'Trocar senha',
        icon: Icons.password,
        action: () {},
      ),
      ProfileOptionModel(
        title: 'Excluir registros',
        icon: Icons.delete_sweep,
        action: () {},
      ),
      ProfileOptionModel(
        title: 'Excluir conta',
        icon: Icons.person_off_outlined,
        action: () {},
      ),
      ProfileOptionModel(
        title: 'Sair da conta',
        icon: Icons.logout,
        action: () {},
      ),
    ];
  }
}
