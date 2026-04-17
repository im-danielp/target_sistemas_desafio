import 'package:target/core/models/user_model.dart';

/// Usuários cadastrados para acessar o aplicativo.
class UserCollection {
  List<UserModel> users = [
    UserModel(name: 'Admin', user: 'admin', password: '123'),
  ];

  UserModel? loggedUser;

  bool isUserRegistered(String user) {
    final userRegistered = users.where((e) => e.user == user);
    return userRegistered.isNotEmpty;
  }

  void addUser(UserModel user) {
    users.add(user);
  }

  void setLoggedUser(String user) {
    loggedUser = users.where((e) => e.user == user).first;
  }
}
