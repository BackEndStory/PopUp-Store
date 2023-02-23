import 'package:flutter/material.dart';
import 'package:pop_up_store/src/view/app.dart';
import 'package:provider/provider.dart';
import 'package:pop_up_store/src/model/repository/PopUp-Provider.dart';
import 'package:pop_up_store/src/model/repository/PopUp-Repository.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:kakao_flutter_sdk_auth/kakao_flutter_sdk_auth.dart';
import 'package:pop_up_store/src/view/kakao-login.dart';



void main() async{
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  KakaoSdk.init(nativeAppKey: '2d0007322556e89070b692a6dc68af91');
  final repository = PopUpRepository();
  final popupProvider = PopUpProvider(repository: repository);
  runApp(
    ChangeNotifierProvider(
     create: (_)=> popupProvider,
     child: MaterialApp(
          debugShowCheckedModeBanner: false,
      home:KakaoLogin()
      )
  )
  );
  FlutterNativeSplash.remove();
}






