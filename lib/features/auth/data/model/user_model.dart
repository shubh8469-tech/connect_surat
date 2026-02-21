import 'package:untitled/features/auth/domain/entities/user_entitiy.dart';

class UserModel extends UserEntity {
  
  const UserModel({
    required super.uid,
    required super.name,
    required super.email,
    required super.phone,
    required super.image,
  });

  factory UserModel.fromFirestore( Map<String, dynamic> json) {
    return UserModel(
      uid: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'phone': phone,
      'image': image,
    };
  }
}