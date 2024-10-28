import 'package:demo_project/Navigation/SideBarMenu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ChatPage.dart';
class IdPage extends StatefulWidget{
  const IdPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return IdPageState();
  }
}

class IdPageState extends State<IdPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBarMenu(),
      appBar: AppBar(

        title: Text("MAWA",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white),),
        actions: [
          IconButton(onPressed: (){},
              icon: FaIcon(FontAwesomeIcons.searchengin,color: Colors.white,)),
          SizedBox(width: 10,),


          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return ChatPage();
            }));
          },
              icon: FaIcon(FontAwesomeIcons.signalMessenger,color: Colors.white,))
        ],
      ),


      body: Column(
        children: [

          // <-----TopBox---->

          Container(
            child: Expanded(
                child: UpBox()
            ),
          ),


          //<-----BottomNavigationBar---->
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Container(
          //     height: 60,
          //     child: DownBar(),
          //   ),
          // ),

        ],
      )
    );
  }
}


// class DownBar extends StatelessWidget{
//   const DownBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           Expanded(
//             child: Card(
//               elevation: 20,
//               child: IconButton(onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context){
//                   return MainScreen();
//                 }));
//               },
//                   icon: Icon(Icons.home,size: 40,
//                   ),
//               ),
//             ),
//           ),
//
//
//           Expanded(
//             child: Card(
//               elevation: 20,
//               child: IconButton(onPressed: (){},
//                 icon: Icon(Icons.search,size: 40,
//                 ),
//               ),
//             ),
//           ),
//
//           Expanded(
//             child: Card(
//               elevation: 20,
//               child: IconButton(onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context){
//                   return SwapPage();
//                 }));
//               },
//                 icon: Icon(Icons.swap_horiz,size: 40,
//                 ),
//               ),
//             ),
//           ),
//
//           Expanded(
//             child: Card(
//               elevation: 20,
//               child: IconButton(onPressed: (){
//                 Navigator.push(context, MaterialPageRoute(builder: (context){
//                   return IdPage();
//                 }));
//               },
//                 icon: Icon(Icons.account_circle_rounded,size: 40,
//                 ),
//               ),
//             ),
//           ),
//
//         ],
//       ),
//     );
//   }
// }

class UpBox extends StatelessWidget{
  const UpBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 15,),
                Text("Profile",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),),
        
                // first (container/sized box).....
        
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 180,
                    child: Column(
                      children: [
                        Card(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/cid.jpg'),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            height: 140,
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  child: Image.asset('assets/images/sukuna.jpg',fit: BoxFit.fill,height: 50,)
                                ),

                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 130,
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text("User Name",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,color: Colors.white),),
                                              Text("@username",style: TextStyle(fontSize: 15,color: Colors.white),)
                                            ],
                                          )
                                      ),
                                    ],
                                  ),
                                ),

                                Expanded(
                                    child: Container(
                                      height: 130,
                                      child: IconButton( onPressed: () { },
                                        icon: FaIcon(FontAwesomeIcons.pencil,color: Colors.black,),
                                      ),
                                    )
                                ),
                                
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        
        
                // second (container/sized box).....
        
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    shadowColor: Colors.blue,
                    elevation: 30,
                    child: Container(
                      height: 450,
                      child: Column(
                        children: [
        
                          //<--------First Box------------>
        
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: CircleAvatar(
                                      radius: 50,
                                      backgroundColor: Colors.white38,
                                      child: IconButton(onPressed: (){},
                                        icon: Icon(Icons.account_circle_rounded,size: 40,),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Center(child: Text("My Account",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),))),
                                  Expanded(
                                    child: SizedBox(
                                      child: IconButton(onPressed: (){},
                                          icon: FaIcon(FontAwesomeIcons.arrowRight)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 25,),
        
                          //<--------Second Box------------>
        
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 2,top: 0),
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundColor: Colors.white38,
                                        child: IconButton(onPressed: (){},
                                          icon: Icon(Icons.lock_person_rounded,size: 40,),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Center(child: Text("Saved Details",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),))),
                                  Expanded(
                                    child: SizedBox(
                                      child: IconButton(onPressed: (){},
                                          icon: FaIcon(FontAwesomeIcons.arrowRight)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 25,),
        
                          //<--------Third Box------------>
        
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 2,top: 0),
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundColor: Colors.white38,
                                        child: IconButton(onPressed: (){},
                                          icon: Icon(Icons.verified_user,size: 40,),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Center(child: Text("Authentication",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),))),
                                  Expanded(
                                    child: SizedBox(
                                      child: IconButton(onPressed: (){},
                                          icon: FaIcon(FontAwesomeIcons.arrowRight)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 25,),
        
                          //<--------Fourth Box------------>
        
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 2,top: 0),
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundColor: Colors.white38,
                                        child: IconButton(onPressed: (){},
                                          icon: Icon(Icons.exit_to_app_rounded,size: 40,),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Center(child: Text("Log Out",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),))),
                                  Expanded(
                                    child: SizedBox(
                                      child: IconButton(onPressed: (){},
                                          icon: FaIcon(FontAwesomeIcons.arrowRight)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 25,),
        
                          //<--------First Box------------>
        
                          InkWell(
                            onTap: (){},
                            child: Container(
                              height: 60,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 2,top: 0),
                                      child: CircleAvatar(
                                        radius: 50,
                                        backgroundColor: Colors.white38,
                                        child: IconButton(onPressed: (){},
                                          icon: Icon(Icons.lock,size: 40,),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Center(child: Text("Face/Touch Id",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20),))),
                                  Expanded(
                                    child: SizedBox(
                                      child: IconButton(onPressed: (){},
                                          icon: FaIcon(FontAwesomeIcons.fingerprint)
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 25,),
        
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),

                //<==== MORE----->


                Text("More",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),


                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 30,
                    child: Container(
                      height: 200,
                      child: Column(
                        children: [

                          //<-------Help And SUpport ---->

                          InkWell(
                            onTap: (){},
                            child: SizedBox(
                              height: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: CircleAvatar(
                                      child: FaIcon(FontAwesomeIcons.bell),
                                    ),
                                  ),
                                  Expanded(child: Text("Help & Support")),
                            
                                  Expanded(child: IconButton(onPressed: (){},
                                    icon: Icon(Icons.arrow_forward_ios),
                                  ),
                                  )
                                ],
                              ),
                            ),
                          ),

                          // SizedBox(height: 5,),

                          //<-------About Us ---->

                          InkWell(
                            onTap: (){},
                            child: SizedBox(
                              height: 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: CircleAvatar(
                                      child: FaIcon(FontAwesomeIcons.heart),
                                    ),
                                  ),
                                  Expanded(child: Text("About US")),
                            
                                  Expanded(child: IconButton(onPressed: (){},
                                    icon: Icon(Icons.arrow_forward_ios),
                                  ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
              ),
            ],
        ),
      ),
    );
  }
}