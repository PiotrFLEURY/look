// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userCount) loading,
    required TResult Function(int userCount, List<UserEntity> users) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int userCount)? loading,
    TResult Function(int userCount, List<UserEntity> users)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userCount)? loading,
    TResult Function(int userCount, List<UserEntity> users)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersStateLoading value) loading,
    required TResult Function(UsersStateLoaded value) loaded,
    required TResult Function(UsersStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsersStateLoading value)? loading,
    TResult Function(UsersStateLoaded value)? loaded,
    TResult Function(UsersStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersStateLoading value)? loading,
    TResult Function(UsersStateLoaded value)? loaded,
    TResult Function(UsersStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res> implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  final UsersState _value;
  // ignore: unused_field
  final $Res Function(UsersState) _then;
}

/// @nodoc
abstract class _$$UsersStateLoadingCopyWith<$Res> {
  factory _$$UsersStateLoadingCopyWith(
          _$UsersStateLoading value, $Res Function(_$UsersStateLoading) then) =
      __$$UsersStateLoadingCopyWithImpl<$Res>;
  $Res call({int userCount});
}

/// @nodoc
class __$$UsersStateLoadingCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements _$$UsersStateLoadingCopyWith<$Res> {
  __$$UsersStateLoadingCopyWithImpl(
      _$UsersStateLoading _value, $Res Function(_$UsersStateLoading) _then)
      : super(_value, (v) => _then(v as _$UsersStateLoading));

  @override
  _$UsersStateLoading get _value => super._value as _$UsersStateLoading;

  @override
  $Res call({
    Object? userCount = freezed,
  }) {
    return _then(_$UsersStateLoading(
      userCount == freezed
          ? _value.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UsersStateLoading implements UsersStateLoading {
  _$UsersStateLoading(this.userCount);

  @override
  final int userCount;

  @override
  String toString() {
    return 'UsersState.loading(userCount: $userCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersStateLoading &&
            const DeepCollectionEquality().equals(other.userCount, userCount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userCount));

  @JsonKey(ignore: true)
  @override
  _$$UsersStateLoadingCopyWith<_$UsersStateLoading> get copyWith =>
      __$$UsersStateLoadingCopyWithImpl<_$UsersStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userCount) loading,
    required TResult Function(int userCount, List<UserEntity> users) loaded,
    required TResult Function() error,
  }) {
    return loading(userCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int userCount)? loading,
    TResult Function(int userCount, List<UserEntity> users)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call(userCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userCount)? loading,
    TResult Function(int userCount, List<UserEntity> users)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(userCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersStateLoading value) loading,
    required TResult Function(UsersStateLoaded value) loaded,
    required TResult Function(UsersStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsersStateLoading value)? loading,
    TResult Function(UsersStateLoaded value)? loaded,
    TResult Function(UsersStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersStateLoading value)? loading,
    TResult Function(UsersStateLoaded value)? loaded,
    TResult Function(UsersStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UsersStateLoading implements UsersState {
  factory UsersStateLoading(final int userCount) = _$UsersStateLoading;

  int get userCount;
  @JsonKey(ignore: true)
  _$$UsersStateLoadingCopyWith<_$UsersStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersStateLoadedCopyWith<$Res> {
  factory _$$UsersStateLoadedCopyWith(
          _$UsersStateLoaded value, $Res Function(_$UsersStateLoaded) then) =
      __$$UsersStateLoadedCopyWithImpl<$Res>;
  $Res call({int userCount, List<UserEntity> users});
}

/// @nodoc
class __$$UsersStateLoadedCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements _$$UsersStateLoadedCopyWith<$Res> {
  __$$UsersStateLoadedCopyWithImpl(
      _$UsersStateLoaded _value, $Res Function(_$UsersStateLoaded) _then)
      : super(_value, (v) => _then(v as _$UsersStateLoaded));

  @override
  _$UsersStateLoaded get _value => super._value as _$UsersStateLoaded;

  @override
  $Res call({
    Object? userCount = freezed,
    Object? users = freezed,
  }) {
    return _then(_$UsersStateLoaded(
      userCount == freezed
          ? _value.userCount
          : userCount // ignore: cast_nullable_to_non_nullable
              as int,
      users == freezed
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserEntity>,
    ));
  }
}

/// @nodoc

class _$UsersStateLoaded implements UsersStateLoaded {
  _$UsersStateLoaded(this.userCount, final List<UserEntity> users)
      : _users = users;

  @override
  final int userCount;
  final List<UserEntity> _users;
  @override
  List<UserEntity> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UsersState.loaded(userCount: $userCount, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsersStateLoaded &&
            const DeepCollectionEquality().equals(other.userCount, userCount) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userCount),
      const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  _$$UsersStateLoadedCopyWith<_$UsersStateLoaded> get copyWith =>
      __$$UsersStateLoadedCopyWithImpl<_$UsersStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userCount) loading,
    required TResult Function(int userCount, List<UserEntity> users) loaded,
    required TResult Function() error,
  }) {
    return loaded(userCount, users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int userCount)? loading,
    TResult Function(int userCount, List<UserEntity> users)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(userCount, users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userCount)? loading,
    TResult Function(int userCount, List<UserEntity> users)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(userCount, users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersStateLoading value) loading,
    required TResult Function(UsersStateLoaded value) loaded,
    required TResult Function(UsersStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsersStateLoading value)? loading,
    TResult Function(UsersStateLoaded value)? loaded,
    TResult Function(UsersStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersStateLoading value)? loading,
    TResult Function(UsersStateLoaded value)? loaded,
    TResult Function(UsersStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UsersStateLoaded implements UsersState {
  factory UsersStateLoaded(final int userCount, final List<UserEntity> users) =
      _$UsersStateLoaded;

  int get userCount;
  List<UserEntity> get users;
  @JsonKey(ignore: true)
  _$$UsersStateLoadedCopyWith<_$UsersStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UsersStateErrorCopyWith<$Res> {
  factory _$$UsersStateErrorCopyWith(
          _$UsersStateError value, $Res Function(_$UsersStateError) then) =
      __$$UsersStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsersStateErrorCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements _$$UsersStateErrorCopyWith<$Res> {
  __$$UsersStateErrorCopyWithImpl(
      _$UsersStateError _value, $Res Function(_$UsersStateError) _then)
      : super(_value, (v) => _then(v as _$UsersStateError));

  @override
  _$UsersStateError get _value => super._value as _$UsersStateError;
}

/// @nodoc

class _$UsersStateError implements UsersStateError {
  _$UsersStateError();

  @override
  String toString() {
    return 'UsersState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UsersStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userCount) loading,
    required TResult Function(int userCount, List<UserEntity> users) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int userCount)? loading,
    TResult Function(int userCount, List<UserEntity> users)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userCount)? loading,
    TResult Function(int userCount, List<UserEntity> users)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UsersStateLoading value) loading,
    required TResult Function(UsersStateLoaded value) loaded,
    required TResult Function(UsersStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UsersStateLoading value)? loading,
    TResult Function(UsersStateLoaded value)? loaded,
    TResult Function(UsersStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UsersStateLoading value)? loading,
    TResult Function(UsersStateLoaded value)? loaded,
    TResult Function(UsersStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UsersStateError implements UsersState {
  factory UsersStateError() = _$UsersStateError;
}
