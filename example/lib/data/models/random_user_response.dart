import 'package:global_example/data/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'random_user_response.freezed.dart';

part 'random_user_response.g.dart';

@freezed
class RandomUserResponse with _$RandomUserResponse {
  const factory RandomUserResponse({
    required List<User> results,
  }) = _RandomUserResponse;

  factory RandomUserResponse.fromJson(Map<String, dynamic> json) =>
      _$RandomUserResponseFromJson(json);
}
