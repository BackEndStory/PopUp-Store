import 'dart:async';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:pop_up_store/src/model/dataresource/remote-datasource.dart';
import 'package:dio/dio.dart';
import 'package:pop_up_store/src/view/kakao-login.dart';

class PopUpRepository {
  final _dio = Dio();
  final _baseUrl = 'http://10.0.2.2:3000/';
  late final KakaoLoginState repository;

  Future<List<Result2>> getPopUpStore() async {
    final response = await _dio.get(
      _baseUrl + 'api/',
    );
    print(response.data["result2"]);
    return response.data["result2"]
        .map<Result2>((x) => Result2.fromJson(x))
        .toList();
  }

  Future kakao_token(OAuthToken token) async {
    final response = await _dio.post(_baseUrl + 'kakao_login/',
        options: Options(
          headers: {"authorization": token.accessToken},
        ));
    return response.data["data"];
  }
}
