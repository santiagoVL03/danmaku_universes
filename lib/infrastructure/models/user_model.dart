import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:danmaku_universes/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required String id,
    required String? name,
    required String username,
    required String? email,
    required String password,
  }) : super(
         id: id,
         name: name,
         username: username,
         email: email,
         password: password,
       );

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      username: json['username'] ?? '',
      email: json['email'] ?? '',
      password: json['password'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      if (name != null) 'name': name,
      'username': username,
      if (email != null) 'email': email,
      'password': password,
    };
  }

  factory UserModel.fromDocumentSnapshot(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>? ?? {};
    return UserModel(
      id: doc.id, // Firestore ya asigna un ID único a cada documento
      name: data['name'] ?? '',
      username: data['username'] ?? '',
      email: data['email'] ?? '',
      password: data['password'] ?? '',
    );
  }
}
