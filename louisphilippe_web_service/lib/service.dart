import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class SingletonDio {

  static Dio getDio() {
    Dio dio = Dio();
    return dio;
  }
}

Future<List<dynamic>> getRechercheArtiste(String text) async{
  var response = await SingletonDio.getDio().get('https://examen-intra-a23.azurewebsites.net/exam/artiste/recherche/$text');
  print(response);
  List<dynamic> list = response.data;
  return list;
}