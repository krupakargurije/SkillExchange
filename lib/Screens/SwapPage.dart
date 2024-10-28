import 'package:demo_project/Navigation/SideBarMenu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ChatPage.dart';

class SwapPage extends StatelessWidget{
  const SwapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBarPage(),
      drawer: const SideBarMenu(),
      appBar: AppBar(
        title: Text("KnowMe",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black),),
        actions: [
          IconButton(onPressed: (){},
              icon: FaIcon(FontAwesomeIcons.searchengin,color: Colors.black,)),
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ChatPage();
            }));
          },
              icon: FaIcon(FontAwesomeIcons.signalMessenger,color: Colors.black,))
        ],
      ),
        body: Container(
          child: Text("Swappage"),
        ),
    );
  }

}
