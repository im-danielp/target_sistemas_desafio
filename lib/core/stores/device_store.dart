import 'package:mobx/mobx.dart';

part 'device_store.g.dart';

class DeviceStore = DeviceStoreBase with _$DeviceStore;

/// Informações globais do aparelho.
abstract class DeviceStoreBase with Store {
  @observable
  double screenWidth = 0.0;

  @action
  void updateScreenWidth(double width) {
    if (screenWidth != width) {
      screenWidth = width;
    }
  }
}
