import 'dart:convert';
import 'dart:io';
import 'package:pop_up_store/src/model/dataresource/remote-datasource.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:kakao_flutter_sdk_user/kakao_flutter_sdk_user.dart';
import 'package:pop_up_store/src/viewModel/login_platform.dart';
import 'package:pop_up_store/src/view/app.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pop_up_store/src/viewModel/login-state.dart';
import 'package:pop_up_store/src/model/repository/PopUp-Repository.dart';

class KakaoLogin extends StatefulWidget {
  const KakaoLogin({Key? key}) : super(key: key);

  @override
  State<KakaoLogin> createState() => KakaoLoginState();
}

class KakaoLoginState extends State<KakaoLogin> {
  LoginPlatform _loginPlatform = LoginPlatform.none;
  static final storage = new FlutterSecureStorage();
  final repo = new PopUpRepository();

  void signInWithKakao() async {
    try {
      bool isInstalled = await isKakaoTalkInstalled();
      OAuthToken token = isInstalled
          ? await UserApi.instance.loginWithKakaoTalk()
          : await UserApi.instance.loginWithKakaoAccount();

      final tokens = await repo.kakao_token(token);

      print(tokens["accessToken"]);
      print(tokens["refreshToken"]);

      storage.write(key: 'accessToken', value: tokens["accessToken"]);
      storage.write(key: 'refreshToken', value: tokens["refreshToken"]);

      setState(() {
        _loginPlatform = LoginPlatform.kakao;
      });
    } catch (error) {
      print('카카오톡으로 로그인 실패 $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: _loginPlatform != LoginPlatform.none
              ? HomeScreen()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _loginButton(
                      signInWithKakao,
                    )
                  ],
                )),
    );
  }

  Widget _loginButton(VoidCallback onTap) {
    return Card(
      elevation: 5.0,
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      child: Ink.image(
        image: AssetImage('assets/kakaoimg.png'),
        width: 60,
        height: 60,
        child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(35.0),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
