import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Navigation/BottomNavigationBar.dart';

class ChatPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ChatPageStatus();
  }
}

class ChatPageStatus extends State<ChatPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarPage(),
      appBar: AppBar(
        title: Text("Chat"),
      ),
      body: Container(
        color: Colors.black12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 70,
                        width: 350,
                        child: Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: IconButton(onPressed: () {},
                                icon: Icon(Icons.image,size: 30,color: Colors.black,),
                              ),
                              label: Text("Message",style: TextStyle(color: Colors.black,),),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(width: 2),
                              )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),

                      SizedBox(
                        height: 80,
                        width: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.black45,
                          child: IconButton(onPressed: (){},
                            icon: Icon(Icons.send,color: Colors.black,size: 30,),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // SizedBox(
              //     height: 70,
              //     child: DownBar()
              // ),
            ],
          ),
      ),
    );
  }
}