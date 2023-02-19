

import 'dart:async';
import 'dart:io';
import 'package:pop_up_store/src/model/dataresource/remote-datasource.dart';
import 'package:dio/dio.dart';

class PopUpRepository {
  final _dio = Dio();
  final _baseUrl = 'http://10.0.2.2:3000/';

  Future<List<PopUpData>> getPopUpStore() async{
    final response = await _dio.get(
      _baseUrl+'api/',
    );
  print(response);
  return response.data
      .map<PopUpData>(
      (x)=>PopUpData.fromJson(json: x)
  ).toList();
}
}
