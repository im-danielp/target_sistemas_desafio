import 'package:flutter/material.dart';
import 'package:target/core/collections/user_collection.dart';
import 'package:target/core/services/locator_service.dart';
import 'package:target/core/widgets/custom_snackbar.dart';
import 'package:target/core/widgets/dialog_confirmation.dart';
import 'package:target/modules/infos/stores/info_store.dart';
import 'package:target/modules/login/login_screen.dart';
import 'package:target/modules/report/stores/report_store.dart';

class ProfileController {
  final userCollection = getIt<UserCollection>();
  final infoStore = getIt<InfoStore>();
  final reportStore = getIt<ReportStore>();

  String get userName => userCollection.loggedUser!.name;
  int get infoCount => infoStore.infoCount;

  Future<void> handdleClearInfos(BuildContext context) async {
    final bool confirmed =
        await showDialog(
          context: context,
          builder: (context) => DialogConfirmation(
            msg: 'Tem certeza que deseja limpar todo o histórico de registros?',
          ),
        ) ??
        false;

    if (confirmed && context.mounted) {
      infoStore.clearInfos();
      reportStore.resetLinesCount();

      ScaffoldMessenger.of(context).showSnackBar(
        CustomSnackbars.success(message: 'Registros excluídos'),
      );
    }
  }

  Future<void> handdleDeleteAccount(BuildContext context) async {
    final bool confirmed =
        await showDialog(
          context: context,
          builder: (context) => DialogConfirmation(
            msg: 'Tem certeza que deseja excluir sua conta?\nEssa ação não pode ser desfeita.',
          ),
        ) ??
        false;

    if (confirmed && context.mounted) {
      infoStore.clearInfos();
      reportStore.resetLinesCount();
      reportStore.resetEditsCount();
      userCollection.deleteAccount();

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    }
  }

  Future<void> handdleLogout(BuildContext context) async {
    final bool confirmed =
        await showDialog(
          context: context,
          builder: (context) => DialogConfirmation(
            msg: 'Tem certeza que deseja finalizar sua sessão?\nSeus registros serão excluídos.',
          ),
        ) ??
        false;

    if (confirmed && context.mounted) {
      infoStore.clearInfos();
      reportStore.resetLinesCount();
      reportStore.resetEditsCount();

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    }
  }
}
