// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picture.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Picture _$PictureFromJson(Map<String, dynamic> json) {
  return _Picture.fromJson(json);
}

/// @nodoc
mixin _$Picture {
  String get large => throw _privateConstructorUsedError;
  String get medium => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PictureCopyWith<Picture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureCopyWith<$Res> {
  factory $PictureCopyWith(Picture value, $Res Function(Picture) then) =
      _$PictureCopyWithImpl<$Res, Picture>;
  @useResult
  $Res call({String large, String medium, String thumbnail});
}

/// @nodoc
class _$PictureCopyWithImpl<$Res, $Val extends Picture>
    implements $PictureCopyWith<$Res> {
  _$PictureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = null,
    Object? medium = null,
    Object? thumbnail = null,
  }) {
    return _then(_value.copyWith(
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PictureCopyWith<$Res> implements $PictureCopyWith<$Res> {
  factory _$$_PictureCopyWith(
          _$_Picture value, $Res Function(_$_Picture) then) =
      __$$_PictureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String large, String medium, String thumbnail});
}

/// @nodoc
class __$$_PictureCopyWithImpl<$Res>
    extends _$PictureCopyWithImpl<$Res, _$_Picture>
    implements _$$_PictureCopyWith<$Res> {
  __$$_PictureCopyWithImpl(_$_Picture _value, $Res Function(_$_Picture) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? large = null,
    Object? medium = null,
    Object? thumbnail = null,
  }) {
    return _then(_$_Picture(
      large: null == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String,
      medium: null == medium
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Picture implements _Picture {
  const _$_Picture(
      {required this.large, required this.medium, required this.thumbnail});

  factory _$_Picture.fromJson(Map<String, dynamic> json) =>
      _$$_PictureFromJson(json);

  @override
  final String large;
  @override
  final String medium;
  @override
  final String thumbnail;

  @override
  String toString() {
    return 'Picture(large: $large, medium: $medium, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Picture &&
            (identical(other.large, large) || other.large == large) &&
            (identical(other.medium, medium) || other.medium == medium) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, large, medium, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PictureCopyWith<_$_Picture> get copyWith =>
      __$$_PictureCopyWithImpl<_$_Picture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PictureToJson(
      this,
    );
  }
}

abstract class _Picture implements Picture {
  const factory _Picture(
      {required final String large,
      required final String medium,
      required final String thumbnail}) = _$_Picture;

  factory _Picture.fromJson(Map<String, dynamic> json) = _$_Picture.fromJson;

  @override
  String get large;
  @override
  String get medium;
  @override
  String get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_PictureCopyWith<_$_Picture> get copyWith =>
      throw _privateConstructorUsedError;
}
