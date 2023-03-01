import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pop_up_store/src/view/app.dart';
import 'package:pop_up_store/src/view/kakao-login.dart';

class LoginState {
  static final storage = FlutterSecureStorage();
  dynamic userInfo = '';

  asyncMethod() async {
    userInfo = await storage.read(key: 'accessToken');
    print(userInfo);

    if (userInfo != null) {
      print(3);
      return HomeScreen();
    } else {
      print(4);
      return KakaoLogin();
    }
  }
}
