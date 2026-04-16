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
    controllerReport.incrementCharactersCount(info.description);
  }

  @action
  void removeInfo(InfoModel info) {
    infos.remove(info);
    controllerReport.decrementCharactersCount(info.description);
  }

  @action
  void editInfo(int id, String newDescription) {
    final index = infos.indexWhere((e) => e.id == id);
    final oldInfo = infos[index];
    final newInfo = InfoModel(id: id, description: newDescription);
    infos[index] = newInfo;

    controllerReport.decrementCharactersCount(oldInfo.description);
    controllerReport.incrementCharactersCount(newDescription);
    controllerReport.incrementEditsCount();
  }
}
