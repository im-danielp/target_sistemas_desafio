import 'package:mobx/mobx.dart';
import 'package:target/core/models/info_model.dart';
import 'package:target/modules/report/controller_report.dart';

part 'info_store.g.dart';

class InfoStore = InfoStoreBase with _$InfoStore;

abstract class InfoStoreBase with Store {
  @observable
  List<InfoModel> infos = ObservableList<InfoModel>();

  final controllerReport = ControllerReport();
  int nextId = 1;

  @action
  void addInfo(InfoModel info) {
    infos.add(info);
    nextId++;

    controllerReport.updateCharactersCount(info.description);
  }

  @action
  void removeInfo(InfoModel info) {
    infos.remove(info);
  }

  @action
  void editInfo(int id, String newDescription) {
    final index = infos.indexWhere((e) => e.id == id);
    final newInfo = InfoModel(id: id, description: newDescription);
    infos[index] = newInfo;
  }
}
