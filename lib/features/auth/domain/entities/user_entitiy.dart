import 'package:equatable/equatable.dart';

class UserEntity extends Equatable{

  final int uid;
  final String name;
  final String email;
  final String phone;
  final String image;

  const UserEntity({
    required this.uid,
    required this.name,
    required this.email,
    required this.phone,
    required this.image
});

  @override
  List<Object?> get props => [uid, name, email, phone, image];

}