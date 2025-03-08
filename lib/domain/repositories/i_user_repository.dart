import 'package:danmaku_universes/domain/entities/user_entity.dart';

abstract class IUserRepository {
  Future<(bool, String, UserEntity?)> authUser(
    String username,
    String password,
  );
  Future<UserEntity> getUser(String userId);
}
