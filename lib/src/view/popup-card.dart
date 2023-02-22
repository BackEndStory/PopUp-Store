import 'package:flutter/material.dart';
import 'package:pop_up_store/src/viewModel/webview.dart';

class PopUpCard extends StatelessWidget {
  final String startdate;
  final String enddate;
  final String title;
  final String url;

  const PopUpCard({
    required this.startdate,
    required this.enddate,
    required this.title,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.blueGrey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '$startdate ~ ',
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      '$enddate',
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
                Text('$title', style: TextStyle(fontSize: 17)),
              ],
            ),
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => UrlWebView(url: url)),
          );
        });
  }
}
