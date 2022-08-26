// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$UserEntityCopyWithImpl<$Res>;
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
class _$UserEntityCopyWithImpl<$Res> implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  final UserEntity _value;
  // ignore: unused_field
  final $Res Function(UserEntity) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? title = freezed,
    Object? largePicture = freezed,
    Object? mediumPicture = freezed,
    Object? thumbnailPicture = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      largePicture: largePicture == freezed
          ? _value.largePicture
          : largePicture // ignore: cast_nullable_to_non_nullable
              as String,
      mediumPicture: mediumPicture == freezed
          ? _value.mediumPicture
          : mediumPicture // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailPicture: thumbnailPicture == freezed
          ? _value.thumbnailPicture
          : thumbnailPicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserEntityCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$_UserEntityCopyWith(
          _$_UserEntity value, $Res Function(_$_UserEntity) then) =
      __$$_UserEntityCopyWithImpl<$Res>;
  @override
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
class __$$_UserEntityCopyWithImpl<$Res> extends _$UserEntityCopyWithImpl<$Res>
    implements _$$_UserEntityCopyWith<$Res> {
  __$$_UserEntityCopyWithImpl(
      _$_UserEntity _value, $Res Function(_$_UserEntity) _then)
      : super(_value, (v) => _then(v as _$_UserEntity));

  @override
  _$_UserEntity get _value => super._value as _$_UserEntity;

  @override
  $Res call({
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? title = freezed,
    Object? largePicture = freezed,
    Object? mediumPicture = freezed,
    Object? thumbnailPicture = freezed,
  }) {
    return _then(_$_UserEntity(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      largePicture: largePicture == freezed
          ? _value.largePicture
          : largePicture // ignore: cast_nullable_to_non_nullable
              as String,
      mediumPicture: mediumPicture == freezed
          ? _value.mediumPicture
          : mediumPicture // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailPicture: thumbnailPicture == freezed
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
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.largePicture, largePicture) &&
            const DeepCollectionEquality()
                .equals(other.mediumPicture, mediumPicture) &&
            const DeepCollectionEquality()
                .equals(other.thumbnailPicture, thumbnailPicture));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(largePicture),
      const DeepCollectionEquality().hash(mediumPicture),
      const DeepCollectionEquality().hash(thumbnailPicture));

  @JsonKey(ignore: true)
  @override
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
