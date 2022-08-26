import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String email,
    required String firstName,
    required String lastName,
    required String title,
    required String largePicture,
    required String mediumPicture,
    required String thumbnailPicture,
  }) = _UserEntity;
}
