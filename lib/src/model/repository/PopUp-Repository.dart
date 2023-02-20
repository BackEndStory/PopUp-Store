

import 'dart:async';
import 'dart:io';
import 'package:pop_up_store/src/model/dataresource/remote-datasource.dart';
import 'package:dio/dio.dart';

class PopUpRepository {
  final _dio = Dio();
  final _baseUrl = 'http://10.0.2.2:3000/';

  Future<List<Result2>> getPopUpStore() async{
    final response = await _dio.get(
      _baseUrl+'api/',
    );
  print(response.data["result2"]);
  return response.data["result2"]
      .map<Result2>(
      (x)=>Result2.fromJson(x)
  ).toList();
}
}
