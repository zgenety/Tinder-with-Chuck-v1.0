import 'package:dio/dio.dart';
import 'package:fff/category.dart';
import 'package:fff/main.dart';

class GetJoke {
  var _dio = Dio(BaseOptions(baseUrl: ""));
  String category = getCategory();

  GetJoke(){
    _dio = Dio(BaseOptions(baseUrl: 'https://api.chucknorris.io/jokes/random'));
  }

  Future<String> getRandomJoke() async {
    final Response<dynamic> response;
    category = getCategory();
    try {
      if (category == "any") {
        response = await _dio.get('');
      }
      else {
        response = await _dio.get('?category{$category}');
      }
      return (response.data['value'] as String).toString();
    }
    catch (e) {
      return "No internet";
    }
  }
}