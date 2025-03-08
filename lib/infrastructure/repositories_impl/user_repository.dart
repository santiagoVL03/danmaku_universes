import 'package:danmaku_universes/domain/entities/user_entity.dart';
import 'package:danmaku_universes/domain/repositories/i_user_repository.dart';

class UserRepository implements IUserRepository{
  @override
  Future<UserEntity> loginUser(String username, String password) {
    print("User logged in");
    return Future.value(UserEntity(id:"1", username: username, password: password, email: "", name: ""));
  }

  @override
  Future<UserEntity> getUser(String userId) {
    print("User retrieved");
    return Future.value(UserEntity(id:"1", username: "username", password: "password", email: "", name: ""));
  }
}