
import 'package:flutter/material.dart';
import 'package:pop_up_store/src/view/popup-card.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}):super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: PopAppBar(),
            body: SafeArea(
              child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, position){
                        return Padding(
                            padding: const EdgeInsets.only(bottom: 5,left: 5,right: 5),
                            child:GestureDetector(
                               child: PopUpCard(startdate: '2023-01-03',enddate: '2023-01-10', title: '카카오팝업스토어',),
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



