import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Screens/CommunityPage.dart';

class SideBarMenu extends StatelessWidget{
  const SideBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName: Text("Know me.com",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              accountEmail: Text("knowme@gmail.com",style: TextStyle(fontSize: 15),),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/images/cid.jpg',fit: BoxFit.cover,),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/sukuna.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),


          InkWell(onTap: (){},
            child: ListTile(
              leading: IconButton(onPressed: (){},
                icon: FaIcon(FontAwesomeIcons.heart),
              ),
              title: Text("Favorites",style: TextStyle(fontSize: 20),),
              subtitle: Text("liked"),
              trailing: IconButton(onPressed: (){},
                icon: Icon(Icons.arrow_forward,color: Colors.black,size: 30,),
              ),
            ),
          ),

          InkWell(onTap: (){},
            child: ListTile(
              leading: IconButton(onPressed: (){},
                icon: FaIcon(FontAwesomeIcons.peopleGroup),
              ),
              title: Text("Friends",style: TextStyle(fontSize: 20),),
            ),
          ),

          InkWell(onTap: (){},
            child: ListTile(
              leading: IconButton(onPressed: (){},
                icon: FaIcon(FontAwesomeIcons.shareNodes),
              ),
              title: Text("Share",style: TextStyle(fontSize: 20),),
              subtitle: Text("with friends"),
            ),
          ),

          InkWell(onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const CommunityPage();
            }));
          },
            child: ListTile(
              leading: IconButton(onPressed: (){},
                icon: Icon(Icons.people,size: 30,),
              ),
              title: Text("Community",style: TextStyle(fontSize: 20),),
            ),
          ),

          InkWell(onTap: (){},
            child: ListTile(
              leading: IconButton(onPressed: (){},
                icon: FaIcon(FontAwesomeIcons.solidBell),
              ),
              title: Text("Request",style: TextStyle(fontSize: 20),),
              subtitle: Text("liked"),
              trailing: CircleAvatar(
                backgroundColor: Colors.red.shade400,
                child: Text("99+",style: TextStyle(color: Colors.white),)
              ),
            ),
          ),
          Divider(),

          InkWell(onTap: (){},
            child: ListTile(
              leading: IconButton(onPressed: (){},
                icon: Icon(Icons.settings,size: 30,),
              ),
              title: Text("Settings",style: TextStyle(fontSize: 20),),
            ),
          ),

          InkWell(onTap: (){},
            child: ListTile(
              leading: IconButton(onPressed: (){},
                icon: Icon(Icons.policy,size: 30,),
              ),
              title: Text("Policies",style: TextStyle(fontSize: 20),),
            ),
          ),
          Divider(),

          InkWell(
            onTap: (){},
            child: ListTile(
              leading: IconButton(onPressed: (){},
                icon: Icon(Icons.logout,size: 30,),
              ),
              title: Text("Log Out",style: TextStyle(fontSize: 20),),
            ),
          ),


        ],
      ),

    );
  }

}