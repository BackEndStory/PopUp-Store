import 'package:flutter/material.dart';
import 'package:pop_up_store/src/view/app.dart';
import 'package:provider/provider.dart';
import 'package:pop_up_store/src/model/repository/PopUp-Provider.dart';
import 'package:pop_up_store/src/model/repository/PopUp-Repository.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async{
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  final repository = PopUpRepository();
  final popupProvider = PopUpProvider(repository: repository);
  runApp(
    ChangeNotifierProvider(
     create: (_)=> popupProvider,
     child: MaterialApp(
          debugShowCheckedModeBanner: false,
      home:HomeScreen()
      )
  )
  );
  FlutterNativeSplash.remove();
}






