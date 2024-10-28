import 'package:flutter/material.dart';
import '../Navigation/SideBarMenu.dart';

class CommunityPage extends StatefulWidget{
  const CommunityPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return ContendBoxCommunityStatusScreen();
  }
}

class ContendBoxCommunityStatusScreen extends State<CommunityPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBarMenu(),
      appBar: AppBar(
        title: Text("Community"),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 80,
                      width: 350,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TextField(
                          onTap: (){},
                          decoration: InputDecoration(
                            label: Text("Search",style: TextStyle(color: Colors.black),),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                      ),
                    ),

                    IconButton(onPressed: (){},
                      icon: Icon(Icons.search,size: 40,),
                    ),
                  ],
                ),
                Text("Results",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),


                //<----First Box------>

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/graphEra.jpeg'),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 250,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 70,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(child: Text("Graphic Era",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,color: Colors.white),)),
                                CircleAvatar(
                                  child: IconButton(onPressed: (){},
                                    icon: Icon(Icons.people_alt_outlined),
                                  ),
                                ),
                                SizedBox(width: 15,),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Learning unlocks new possibilities! Every expert started as a beginner. What excites you to explore? Dive in!",
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: ElevatedButton(onPressed: (){},
                                child: Text("Ask to Join",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 20),)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //<----Second Box------>

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/graphEra2.jpeg'),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 250,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 70,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(child: Text("Graphic Era",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,color: Colors.white),)),
                                CircleAvatar(
                                  child: IconButton(onPressed: (){},
                                    icon: Icon(Icons.people_alt_outlined),
                                  ),
                                ),
                                SizedBox(width: 15,),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Learning unlocks new possibilities! Every expert started as a beginner. What excites you to explore? Dive in!",
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: ElevatedButton(onPressed: (){},
                                child: Text("Ask to Join",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 20),)
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                //<---Fourth Box---->

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/graphEra1.jpeg'),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 250,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 70,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(child: Text("Graphic Era",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25),)),
                                CircleAvatar(
                                  child: IconButton(onPressed: (){},
                                    icon: Icon(Icons.people_alt_outlined),
                                  ),
                                ),
                                SizedBox(width: 15,),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Learning unlocks new possibilities! Every expert started as a beginner. What excites you to explore? Dive in!",
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: ElevatedButton(onPressed: (){},
                                child: Text("Ask to Join",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 20),)
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                //<----Fifth Box----->

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 30,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/graphEra3.jpeg'),
                            fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: 250,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 70,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(child: Text("Graphic Era",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,color: Colors.white),)),
                                CircleAvatar(
                                  child: IconButton(onPressed: (){},
                                    icon: Icon(Icons.people_alt_outlined),
                                  ),
                                ),
                                SizedBox(width: 15,),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Learning unlocks new possibilities! Every expert started as a beginner. What excites you to explore? Dive in!",
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: ElevatedButton(
                                onPressed: (){},
                                child: Text("Ask to Join",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 20),)
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),
        ],
      )
    );
  }

}