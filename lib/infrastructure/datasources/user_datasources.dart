import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:danmaku_universes/infrastructure/DTOs/user_dto.dart';
import 'package:danmaku_universes/infrastructure/models/user_model.dart';

class UserDatasources {

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<(bool, String)> createUser(UserModel newuser) async {
    try {
      await _firestore.collection('user')
        .add(newuser.toJson());
      return (true, "");
    } catch (e) {
      return (false, "$e");
    }
  }

  Future<void> updateUser() async {
    // Update user
  }

  Future<void> deleteUser() async {
    // Delete user
  }

  Future<(bool, String, UserDto?)> getUser({
    String? username,
    String? id,
  }) async {
    try {
      DocumentSnapshot? documentSnapshot;
      QuerySnapshot? querySnapshot;
      if (username != null) {
        querySnapshot =
            await _firestore
                .collection('user')
                .where('username', isEqualTo: username)
                .limit(1)
                .get();
        if (querySnapshot.docs.isEmpty) {
          return (false, "User not found", null);
        } else {
          documentSnapshot = querySnapshot.docs.first;
          return (true, "", UserDto.fromModel(UserModel.fromDocumentSnapshot(documentSnapshot)));
        }
      } else if (id != null) {
        documentSnapshot =
            await _firestore
                .collection('user')
                .doc(id)
                .get();
        if (!documentSnapshot.exists) {
          return (false, "User not found", null);
        } else {
          return (true, "", UserDto.fromModel(UserModel.fromDocumentSnapshot(documentSnapshot)));
        }
      } else {
        return (false, "You must to pass at least an argument", null);
      }
    } catch (e) {
      return (false, "$e", null);
    }
  }

  Future<(bool, String)> validateUser({
    String? username,
    String? password,
  }) async {
    try {
      var querySnapshot =
          await _firestore
              .collection('user')
              .where('username', isEqualTo: username)
              .where('password', isEqualTo: password)
              .limit(1)
              .get();
      if (querySnapshot.docs.isEmpty) {
        return (false, "User not found");
      } else {
        return (true, "");
      }
    } catch (e) {
      return (false, "$e");
    }
  }
}
