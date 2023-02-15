
import 'package:flutter/material.dart';

class PopUpCard extends StatelessWidget{
  final String date;
  final String title;

  const PopUpCard({
    required this.date,
    required this.title
});
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.blueGrey,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),

          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Text('$date',style: TextStyle(fontSize: 20),),
             Text('$title',style: TextStyle(fontSize: 17)),

           ],
      ),

      ),
    ) ;
  }
}