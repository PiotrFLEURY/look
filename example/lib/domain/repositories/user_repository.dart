import 'package:example/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<List<UserEntity>> getUsers(int userCount);
}
