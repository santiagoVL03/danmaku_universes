class UserEntity {
  final String id;
  final String? name;
  final String username;
  final String? email;
  final String password;

  UserEntity({
    required this.id,
    this.name,
    required this.username,
    this.email,
    required this.password,
  });
}