import 'package:target/core/collections/user_collection.dart';
import 'package:target/core/services/locator_service.dart';
import 'package:target/modules/infos/stores/info_store.dart';

class ProfileController {
  final userCollection = getIt<UserCollection>();
  final infoStore = getIt<InfoStore>();

  String get userName => userCollection.loggedUser!.name;
  int get infoCount => infoStore.getInfoCount();

  void handleChangeUserPassword() {
    // if (userCollection.loggedUser!.password == oldPassword) {
    //   userCollection.changeUserPassword(newPassword);
    // } else {}
  }
}
