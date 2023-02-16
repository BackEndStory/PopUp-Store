
import 'package:flutter/material.dart';

class PopUpCard extends StatelessWidget{
  final String startdate;
  final String enddate;
  final String title;

  const PopUpCard({
    required this.startdate,
    required this.enddate,
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
             Row(
               children: [
                 Text('$startdate ~ ',style: TextStyle(fontSize: 13),),
                 Text('$enddate',style: TextStyle(fontSize: 13),),
               ],
             ),
             Text('$title',style: TextStyle(fontSize: 17)),

           ],
      ),

      ),
    ) ;
  }
}