import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:danmaku_universes/domain/entities/user_entity.dart';

class UserModel {
  final String? id;
  final String? name;
  final String username;
  final String? email;
  final String password;

  UserModel({
    this.id, // Se agrega el ID del documento
    this.name,
    required this.username,
    this.email,
    required this.password,
  });
  
  factory UserModel.fromJson(Map<String, dynamic> json, String id) {
    return UserModel(
      id: id, // Se asigna el ID si está disponible      
      name: json['name'] ?? '',
      username: json['username'] ?? '',
      email: json['email'] ?? '',
      password: json['password'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (name != null) 'name': name,
      'username': username,
      if (email != null) 'email': email,
      'password': password,
    };
  }

  factory UserModel.fromDocumentSnapshot(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>? ?? {};
    return UserModel(
      name: data['name'] ?? '',
      username: data['username'] ?? '',
      email: data['email'] ?? '',
      password: data['password'] ?? '',
    );
  }
}
