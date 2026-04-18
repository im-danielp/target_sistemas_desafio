import 'package:target/core/models/user_model.dart';

/// Usuários cadastrados para acessar o aplicativo.
class UserCollection {
  List<UserModel> users = [
    UserModel(name: 'Admin', login: 'admin', password: 'admin'),
  ];

  UserModel? loggedUser;

  bool isUserRegistered(String login) {
    final userRegistered = users.where((e) => e.login == login);
    return userRegistered.isNotEmpty;
  }

  void addUser(UserModel user) {
    users.add(user);
  }

  bool confirmUserData(String login, String password) {
    final userRegistered = users.where((e) => e.login == login && e.password == password);
    return userRegistered.isNotEmpty;
  }

  void setLoggedUser(String login) {
    loggedUser = users.where((e) => e.login == login).first;
  }

  void deleteAccount() {
    users.remove(loggedUser);
  }

  void logout() {
    loggedUser = null;
  }
}
