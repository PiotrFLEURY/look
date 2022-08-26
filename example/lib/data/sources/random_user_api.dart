import 'package:dio/dio.dart';
import 'package:example/data/models/random_user_response.dart';
import 'package:retrofit/http.dart';

part 'random_user_api.g.dart';

@RestApi(baseUrl: 'https://randomuser.me/')
abstract class RandomUserApi {
  factory RandomUserApi(Dio dio, {String? baseUrl}) = _RandomUserApi;

  @GET('/api/')
  Future<RandomUserResponse> getUsers(@Query('results') int userCount);
}
