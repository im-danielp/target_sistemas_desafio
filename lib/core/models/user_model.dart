class UserModel {
  final String name;
  final String login;
  String password;

  UserModel({
    required this.name,
    required this.login,
    required this.password,
  });

  @override
  String toString() {
    return 'name $name, user $login, password $password';
  }
}
