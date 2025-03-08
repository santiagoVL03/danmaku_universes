import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:danmaku_universes/domain/entities/user_entity.dart';
import 'package:danmaku_universes/domain/repositories/i_user_repository.dart';

class UserRepository implements IUserRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Future<(bool, String, UserEntity?)> authUser(
    String username,
    String password,
  ) async {
    try {
      var querySnapshot =
          await _firestore
              .collection('users')
              .where('username', isEqualTo: username)
              .where('password', isEqualTo: password)
              .limit(1)
              .get();
      if (querySnapshot.docs.isNotEmpty) {
        var user = querySnapshot.docs.first;
        return (
          true,
          "",
          UserEntity(
            id: user.id,
            username: user['username'],
            password: user['password'],
            email: user['email'],
            name: user['name'],
          ),
        );
      } else {
        return (false, "User not found", null);
      }
    } catch (e) {
      return (false, "An error occurred: $e", null);
    }
  }

  @override
  Future<UserEntity> getUser(String userId) {
    print("User retrieved");
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
}
