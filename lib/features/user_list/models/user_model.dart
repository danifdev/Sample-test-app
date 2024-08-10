import 'package:hive/hive.dart';
part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;

  @HiveField(2)
  final String age;

  @HiveField(3)
  final bool isMale;

  const UserModel({
    required this.name,
    required this.id,
    required this.age,
    required this.isMale,
  });
}
