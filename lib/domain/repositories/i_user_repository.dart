import 'package:danmaku_universes/domain/entities/user_entity.dart';

abstract class IUserRepository {
  Future<UserEntity> loginUser(String username, String password);
  Future<UserEntity> getUser(String userId);
}