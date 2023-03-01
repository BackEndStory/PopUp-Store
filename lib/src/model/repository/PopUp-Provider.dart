import 'package:flutter/material.dart';
import 'package:pop_up_store/src/model/dataresource/remote-datasource.dart';
import 'package:pop_up_store/src/model/repository/PopUp-Repository.dart';

class PopUpProvider extends ChangeNotifier {
  final PopUpRepository repository;
  List<Result2> data = [];

  PopUpProvider({required this.repository}) : super() {
    getPopUpStore2();
  }

  void getPopUpStore2() async {
    final response = await repository.getPopUpStore();

    data.addAll(response);
    notifyListeners();
  }

}
