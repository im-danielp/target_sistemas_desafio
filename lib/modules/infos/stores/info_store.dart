import 'package:mobx/mobx.dart';
import 'package:target/core/models/info_model.dart';

part 'info_store.g.dart';

class InfoStore = InfoStoreBase with _$InfoStore;

abstract class InfoStoreBase with Store {
  @observable
  List<InfoModel> infos = ObservableList<InfoModel>();

  int get infoCount => infos.length;
  int nextId = 1;

  @action
  void addInfo(String infoDescription) {
    final newInfo = InfoModel(id: nextId, description: infoDescription);
    infos.add(newInfo);
    nextId++;
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

  @action
  void clearInfos() {
    infos.clear();
  }
}
