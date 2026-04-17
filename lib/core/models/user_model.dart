class UserModel {
  final String name;
  final String user;
  final String password;

  UserModel({
    required this.name,
    required this.user,
    required this.password,
  });

  @override
  String toString() {
    return 'name $name, user $user, password $password';
  }
}
