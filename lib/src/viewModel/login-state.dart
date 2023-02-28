//
// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:pop_up_store/src/view/app.dart';
// import 'dart:js';
//
// class LoginState{
//
//   static final storage = FlutterSecureStorage();
//   dynamic userInfo = '';
//
//   asyncMethod() async {
//     // read 함수로 key값에 맞는 정보를 불러오고 데이터타입은 String 타입
//     // 데이터가 없을때는 null을 반환
//
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       asyncMethod();
//     });
//     userInfo = await storage.read(key:'accessToken');
//
//     // user의 정보가 있다면 로그인 후 들어가는 첫 페이지로 넘어가게 합니다.
//     if (userInfo != null) {
//       new HomeScreen();
//     }
//   }
//
//   }



