import 'package:demo_project/Navigation/SideBarMenu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ChatPage.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBarPage(),
      drawer: SideBarMenu(),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Expanded(
                  child: ContendBoxMainScreen()
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     height: 60,
            //     child: const DownBar(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
class ContendBoxMainScreen extends StatefulWidget{
  const ContendBoxMainScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return ContendBoxMainScreenState();
  }
}

class ContendBoxMainScreenState extends State<ContendBoxMainScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Swap / Learn / Grow",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.black38,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text("Learn By Teaching",style: TextStyle(fontWeight: FontWeight.w500),),
                        Container(
                          child: Column(
                            children: [
                              Text("Most Collaborated",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,)),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Discover the most accomplished and influential professionals",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                              ),

                              SizedBox(
                                height: 70,
                                width: double.infinity,
                                child: Row(
                                  children: [
                                    IconButton(onPressed: (){},
                                        icon: FaIcon(FontAwesomeIcons.heart,color: Colors.black,)
                                    ),
                                    Text("2.2k+",style: TextStyle(fontWeight: FontWeight.w900),),
                                    SizedBox(width: 10,),
                                    IconButton(onPressed: (){},
                                        icon: Icon(Icons.swap_horiz,color: Colors.black,),
                                    ),
                                    Text("500k+",style: TextStyle(fontWeight: FontWeight.w900),),
                                    SizedBox(width: 10,),
                                    IconButton(onPressed: (){},
                                      icon: Icon(Icons.comment,color: Colors.black,),
                                    ),
                                    Text("1.5k+",style: TextStyle(fontWeight: FontWeight.w900),),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                          child: Text("see more",style: TextStyle(color: Colors.black),)),
                                    ),
                                    SizedBox(width: 10,),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Free Learning",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25),),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                        // color: Colors.black
                    ),
                    height: 400,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 20,
                            child: Container(
                              height: 200,
                              width: double.infinity,
                              child: Image.asset('assets/images/cid.jpg',fit: BoxFit.cover,),
                            ),
                          ),
                        ),

                        Container(
                          height: 165,
                          width: double.infinity,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 50,width: double.infinity,
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Expanded(
                                        child: Text("21,300 students")
                                    ),
                                    Expanded(child: Align(
                                      alignment: Alignment.centerRight,
                                        child: Text("10h 26m"))
                                    ),
                                    SizedBox(width: 20,),
                                  ],
                                ),
                              ),
                              Text("Learn UI/UX Design, Figma and Prototyping",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  SizedBox(
                                  height: 50,
                                  child: Expanded(
                                      child: Text("-Brandjvhbs",style: TextStyle(color: Colors.black)),
                                  ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),


              //<------Second---->


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 30,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // color: Colors.black
                    ),
                    height: 400,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            elevation: 20,
                            child: Container(
                              height: 200,
                              width: double.infinity,
                              child: Image.asset('assets/images/sukuna.jpg',fit: BoxFit.cover,),
                            ),
                          ),
                        ),

                        Container(
                          height: 165,
                          width: double.infinity,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 50,width: double.infinity,
                                child: Row(
                                  children: [
                                    SizedBox(width: 20,),
                                    Expanded(
                                        child: Text("21,300 students")
                                    ),
                                    Expanded(child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text("10h 26m"))
                                    ),
                                    SizedBox(width: 20,),
                                  ],
                                ),
                              ),
                              Text("Learn UI/UX Design, Figma and Prototyping",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: Expanded(
                                      child: Text("-Brandjvhbs",style: TextStyle(color: Colors.black)),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}