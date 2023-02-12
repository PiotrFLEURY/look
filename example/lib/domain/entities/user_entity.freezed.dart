// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEntity {
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get largePicture => throw _privateConstructorUsedError;
  String get mediumPicture => throw _privateConstructorUsedError;
  String get thumbnailPicture => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {String email,
      String firstName,
      String lastName,
      String title,
      String largePicture,
      String mediumPicture,
      String thumbnailPicture});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? title = null,
    Object? largePicture = null,
    Object? mediumPicture = null,
    Object? thumbnailPicture = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      largePicture: null == largePicture
          ? _value.largePicture
          : largePicture // ignore: cast_nullable_to_non_nullable
              as String,
      mediumPicture: null == mediumPicture
          ? _value.mediumPicture
          : mediumPicture // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailPicture: null == thumbnailPicture
          ? _value.thumbnailPicture
          : thumbnailPicture // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserEntityCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$_UserEntityCopyWith(
          _$_UserEntity value, $Res Function(_$_UserEntity) then) =
      __$$_UserEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String firstName,
      String lastName,
      String title,
      String largePicture,
      String mediumPicture,
      String thumbnailPicture});
}

/// @nodoc
class __$$_UserEntityCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$_UserEntity>
    implements _$$_UserEntityCopyWith<$Res> {
  __$$_UserEntityCopyWithImpl(
      _$_UserEntity _value, $Res Function(_$_UserEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? title = null,
    Object? largePicture = null,
    Object? mediumPicture = null,
    Object? thumbnailPicture = null,
  }) {
    return _then(_$_UserEntity(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      largePicture: null == largePicture
          ? _value.largePicture
          : largePicture // ignore: cast_nullable_to_non_nullable
              as String,
      mediumPicture: null == mediumPicture
          ? _value.mediumPicture
          : mediumPicture // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailPicture: null == thumbnailPicture
          ? _value.thumbnailPicture
          : thumbnailPicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserEntity implements _UserEntity {
  const _$_UserEntity(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.title,
      required this.largePicture,
      required this.mediumPicture,
      required this.thumbnailPicture});

  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String title;
  @override
  final String largePicture;
  @override
  final String mediumPicture;
  @override
  final String thumbnailPicture;

  @override
  String toString() {
    return 'UserEntity(email: $email, firstName: $firstName, lastName: $lastName, title: $title, largePicture: $largePicture, mediumPicture: $mediumPicture, thumbnailPicture: $thumbnailPicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEntity &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.largePicture, largePicture) ||
                other.largePicture == largePicture) &&
            (identical(other.mediumPicture, mediumPicture) ||
                other.mediumPicture == mediumPicture) &&
            (identical(other.thumbnailPicture, thumbnailPicture) ||
                other.thumbnailPicture == thumbnailPicture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, firstName, lastName,
      title, largePicture, mediumPicture, thumbnailPicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEntityCopyWith<_$_UserEntity> get copyWith =>
      __$$_UserEntityCopyWithImpl<_$_UserEntity>(this, _$identity);
}

abstract class _UserEntity implements UserEntity {
  const factory _UserEntity(
      {required final String email,
      required final String firstName,
      required final String lastName,
      required final String title,
      required final String largePicture,
      required final String mediumPicture,
      required final String thumbnailPicture}) = _$_UserEntity;

  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get title;
  @override
  String get largePicture;
  @override
  String get mediumPicture;
  @override
  String get thumbnailPicture;
  @override
  @JsonKey(ignore: true)
  _$$_UserEntityCopyWith<_$_UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
