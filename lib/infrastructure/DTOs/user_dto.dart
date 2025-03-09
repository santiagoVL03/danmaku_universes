import 'package:danmaku_universes/domain/entities/user_entity.dart';
import 'package:danmaku_universes/infrastructure/models/user_model.dart';

class UserDto {
  final String? id;
  final String? name;
  final String username;
  final String? email;
  final String password;

  UserDto({
    this.id,
    this.name,
    required this.username,
    this.email,
    required this.password,
  });

  UserEntity toEntity() {
    return UserEntity(
      id: id ?? '',
      name: name,
      username: username,
      email: email,
      password: password,
    );
  }

  factory UserDto.fromEntity(UserEntity entity) {
    return UserDto(
      id: entity.id,
      name: entity.name,
      username: entity.username,
      email: entity.email,
      password: entity.password,
    );
  }

  UserModel toModel() {
    return UserModel(
      name: name,
      username: username,
      email: email,
      password: password,
    );
  }

  factory UserDto.fromModel(UserModel model) {
    return UserDto(
      id: model.id,
      name: model.name,
      username: model.username,
      email: model.email,
      password: model.password,
    );
  }
}