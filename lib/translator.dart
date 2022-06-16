import 'package:dio/dio.dart';

class Translator {
  Dio _dio = Dio(BaseOptions(baseUrl: ""));

  Translator(){
    _dio = Dio(BaseOptions(baseUrl: 'https://translate.google.com/?sl=en&tl=ru&text='));
  }

  Future<String> translateOnRussian(String text) async {
    final Response<dynamic> response = await _dio.get(text.split(" ").join("%20"));
    //return (response.data['value'] as String).toString();
    return "sjfndoisfmsoi";
  }
}