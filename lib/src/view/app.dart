
import 'package:flutter/material.dart';
import 'package:pop_up_store/src/view/popup-card.dart';
import 'package:provider/provider.dart';
import 'package:pop_up_store/src/model/repository/PopUp-Provider.dart';



class HomeScreen extends StatelessWidget {

const HomeScreen({
  Key? key
}):super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<PopUpProvider>();
    provider.getPopUpStore2();
    final popup_data = provider.data;

    return Scaffold(
            appBar: PopAppBar(),
            body: SafeArea(
              child: ListView.builder(
                      itemCount: popup_data.length,
                      itemBuilder: (context, index){
                        final popdata_list = popup_data[index];

                        if(popdata_list == null){
                          return Container();
                        }
                        return Padding(
                            padding: const EdgeInsets.only(bottom: 5,left: 5,right: 5),
                            child:GestureDetector(
                               child: PopUpCard(startdate: popdata_list.startTime,enddate: popdata_list.endTime, title: popdata_list.title,),
                        )
                        );



                      },

                  ),

                ),

            );
  }

  AppBar PopAppBar(){
    return AppBar(
        centerTitle: true,
        title: Text('POP-UP Store',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600
        ),
        ),
      backgroundColor: Colors.blue[300],

    );
  }
}



