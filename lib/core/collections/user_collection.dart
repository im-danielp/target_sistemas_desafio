import 'package:target/core/models/user_model.dart';

/// Usuários cadastrados para acessar o aplicativo.
class UserCollection {
  List<UserModel> users = [
    UserModel(name: 'Admin', login: 'admin', password: '123'),
  ];

  void addUser(UserModel user) {
    users.add(user);
  }
}
