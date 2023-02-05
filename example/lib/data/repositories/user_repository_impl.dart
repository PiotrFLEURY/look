import 'package:global_example/data/sources/random_user_api.dart';
import 'package:global_example/domain/entities/user_entity.dart';
import 'package:global_example/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final RandomUserApi randomUserApi;

  UserRepositoryImpl(this.randomUserApi);

  @override
  Future<List<UserEntity>> getUsers(int userCount) async {
    return randomUserApi.getUsers(userCount).then((value) => value.results
        .map(
          (e) => UserEntity(
            email: e.email,
            firstName: e.name.first,
            lastName: e.name.last,
            title: e.name.title,
            largePicture: e.picture.large,
            mediumPicture: e.picture.medium,
            thumbnailPicture: e.picture.thumbnail,
          ),
        )
        .toList());
  }
}
