// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RandomUserResponse _$$_RandomUserResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RandomUserResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RandomUserResponseToJson(
        _$_RandomUserResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
