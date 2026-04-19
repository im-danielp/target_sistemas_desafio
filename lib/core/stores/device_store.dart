import 'package:mobx/mobx.dart';

part 'device_store.g.dart';

class DeviceStore = DeviceStoreBase with _$DeviceStore;

/// Informações globais do aparelho.
abstract class DeviceStoreBase with Store {
  @observable
  double screenWidth = 0.0;

  @observable
  double screenHeight = 0.0;

  @action
  void updateScreenSize(double width, double height) {
    if (screenWidth != width) {
      screenWidth = width;
    }

    if (screenHeight != height) {
      screenHeight = height;
    }
  }
}
