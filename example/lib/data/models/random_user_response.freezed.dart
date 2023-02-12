// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RandomUserResponse _$RandomUserResponseFromJson(Map<String, dynamic> json) {
  return _RandomUserResponse.fromJson(json);
}

/// @nodoc
mixin _$RandomUserResponse {
  List<User> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RandomUserResponseCopyWith<RandomUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomUserResponseCopyWith<$Res> {
  factory $RandomUserResponseCopyWith(
          RandomUserResponse value, $Res Function(RandomUserResponse) then) =
      _$RandomUserResponseCopyWithImpl<$Res, RandomUserResponse>;
  @useResult
  $Res call({List<User> results});
}

/// @nodoc
class _$RandomUserResponseCopyWithImpl<$Res, $Val extends RandomUserResponse>
    implements $RandomUserResponseCopyWith<$Res> {
  _$RandomUserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RandomUserResponseCopyWith<$Res>
    implements $RandomUserResponseCopyWith<$Res> {
  factory _$$_RandomUserResponseCopyWith(_$_RandomUserResponse value,
          $Res Function(_$_RandomUserResponse) then) =
      __$$_RandomUserResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<User> results});
}

/// @nodoc
class __$$_RandomUserResponseCopyWithImpl<$Res>
    extends _$RandomUserResponseCopyWithImpl<$Res, _$_RandomUserResponse>
    implements _$$_RandomUserResponseCopyWith<$Res> {
  __$$_RandomUserResponseCopyWithImpl(
      _$_RandomUserResponse _value, $Res Function(_$_RandomUserResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$_RandomUserResponse(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RandomUserResponse implements _RandomUserResponse {
  const _$_RandomUserResponse({required final List<User> results})
      : _results = results;

  factory _$_RandomUserResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RandomUserResponseFromJson(json);

  final List<User> _results;
  @override
  List<User> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'RandomUserResponse(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RandomUserResponse &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RandomUserResponseCopyWith<_$_RandomUserResponse> get copyWith =>
      __$$_RandomUserResponseCopyWithImpl<_$_RandomUserResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RandomUserResponseToJson(
      this,
    );
  }
}

abstract class _RandomUserResponse implements RandomUserResponse {
  const factory _RandomUserResponse({required final List<User> results}) =
      _$_RandomUserResponse;

  factory _RandomUserResponse.fromJson(Map<String, dynamic> json) =
      _$_RandomUserResponse.fromJson;

  @override
  List<User> get results;
  @override
  @JsonKey(ignore: true)
  _$$_RandomUserResponseCopyWith<_$_RandomUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
