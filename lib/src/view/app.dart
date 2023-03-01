import 'package:flutter/material.dart';
import 'package:pop_up_store/src/view/popup-card.dart';
import 'package:provider/provider.dart';
import 'package:pop_up_store/src/model/repository/PopUp-Provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pop_up_store/src/view/kakao-login.dart';

class HomeScreen extends StatelessWidget {
  static final storage = FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<PopUpProvider>();
    final popup_data = provider.data;

    return Scaffold(
      appBar: PopAppBar(context),
      body: SafeArea(
        child: ListView.builder(
          itemCount: popup_data.length,
          itemBuilder: (context, index) {
            final popdata_list = popup_data[index];
            if (popdata_list == null) {
              return Container();
            }
            return Padding(
              padding:
                  const EdgeInsets.only(top: 2, bottom: 5, left: 5, right: 5),
              child: PopUpCard(
                startdate: popdata_list.startTime!,
                enddate: popdata_list.endTime!,
                title: popdata_list.title!,
                url: popdata_list.url!,
              ),
            );
          },
        ),
      ),
    );
  }

  AppBar PopAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        'POP-UP Store',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      ),
      backgroundColor: Colors.blue[300],
      actions: [
        IconButton(
            onPressed: () {
              storage.delete(key: "accessToken");
              storage.delete(key: "refreshToken");
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => KakaoLogin()));
            },
            icon: Icon(Icons.logout)),
      ],
    );
  }
}
