import 'package:dio/dio.dart';

class GetJoke {
  Dio _dio = Dio(BaseOptions(baseUrl: "/"));

  GetJoke(String url){
    _dio = Dio(BaseOptions(baseUrl: url));
  }

  Future<String> getRandomJoke() async {
    final Response<dynamic> response = await _dio.get('');
    return (response.data['value'] as String).toString();
  }
}