import 'package:target/core/services/locator_service.dart';
import 'package:target/core/models/info_model.dart';
import 'package:target/modules/infos/stores/info_store.dart';
import 'package:target/modules/report/stores/report_store.dart';

/// Usada para manejar o store das infos e atualizar os dados do relatório.
class InfosController {
  final infoStore = getIt<InfoStore>();
  final reportStore = getIt<ReportStore>();

  List<InfoModel> get infos => infoStore.infos;

  void handleAddInfo(String infoDescription) {
    infoStore.addInfo(infoDescription);
    reportStore.incrementLinesCount(infoDescription);
  }

  void handleRemoveInfo(InfoModel info) {
    infoStore.removeInfo(info);
    reportStore.decrementLinesCount(info.description);
  }

  void handleEditInfo(InfoModel info, String newDescription) {
    final oldDescription = info.description;

    if (newDescription != oldDescription) {
      infoStore.editInfo(info.id, newDescription);
      reportStore.decrementLinesCount(oldDescription);
      reportStore.incrementLinesCount(newDescription);
      reportStore.incrementEditsCount();
    }
  }
}
