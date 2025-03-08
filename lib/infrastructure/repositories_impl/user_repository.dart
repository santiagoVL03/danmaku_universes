import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:danmaku_universes/domain/entities/user_entity.dart';
import 'package:danmaku_universes/domain/repositories/i_user_repository.dart';
import 'package:danmaku_universes/infrastructure/DTOs/user_dto.dart';
import 'package:danmaku_universes/infrastructure/datasources/user_datasources.dart';

class UserRepository implements IUserRepository {
  UserDatasources _userDatasources = UserDatasources();
  @override
  Future<(bool, String, UserEntity?)> authUser(
    String username,
    String password,
  ) async {
    final userdto = await _userDatasources.getUser(username: username);
    if (userdto.$1 == false || userdto.$3 == null) {
      return (false, "User not found", null);
    }
    final userent = userdto.$3!.toEntity();
    return (true, "", userent);
  }

  @override
  Future<UserEntity> getUser(String userId) async {
    return Future.value(
      UserEntity(
        id: "1",
        username: "username",
        password: "password",
        email: "",
        name: "",
      ),
    );
  }

  @override
  Future<(bool, String)> createUser(UserEntity user) async {
    // Create user
    var newuserdto = UserDto.fromEntity(user);
    return await _userDatasources.createUser(newuserdto.toModel());
  }
}
