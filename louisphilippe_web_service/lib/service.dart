import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:louisphilippe_web_service/transfert.dart';

class SingletonDio {

  static Dio getDio() {
    Dio dio = Dio();
    return dio;
  }
}

Future<List<Artiste>> getRechercheArtiste(String text) async{
  try {
    final response =
    await SingletonDio.getDio().get('https://examen-intra-a23.azurewebsites.net/exam/artiste/recherche/$text');

    return (response.data as List).map((artiste) => Artiste.fromJson(artiste)).toList();
  } catch (e) {
    print(e);
    rethrow;
  }
}