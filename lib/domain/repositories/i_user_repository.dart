import 'package:danmaku_universes/domain/entities/user_entity.dart';
import 'package:danmaku_universes/infrastructure/DTOs/user_dto.dart';

abstract class IUserRepository {
  Future<(bool, String, UserEntity?)> authUser(
    String username,
    String password,
  );
  Future<UserEntity> getUser(String userId);
  Future<(bool, String)> createUser(UserDto user);
}
