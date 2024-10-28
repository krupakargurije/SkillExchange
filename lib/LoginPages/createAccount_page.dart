import 'package:flutter/material.dart';
import '../Navigation/BottomNavigationBar.dart';
class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => CreateAccountPageState();
}


class CreateAccountPageState extends State<CreateAccountPage> {
  var name = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var conformPassword = TextEditingController();
  var unfill ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Account",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.black),),
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Create Your Account", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20,),),
          ),

          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                label: Text("Name",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black),),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black,),
                  borderRadius: BorderRadius.circular(40),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(color: Colors.black,width: 1)
                ),
              ),
            ),
          ),

          Text("Email",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: email,
              decoration: InputDecoration(
                label: Text("Email",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black),),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,width: 1),
                  borderRadius: BorderRadius.circular(40),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(color: Colors.black,width: 2)
                )
              ),
            ),
          ),

          Text("Password",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: password,
              decoration: InputDecoration(
                label: Text("Password",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black),),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(width: 1,color: Colors.black),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2,color: Colors.black),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ),

          Text("Conforn Password",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black),),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: conformPassword,
              decoration: InputDecoration(
                label: Text("Conform Password",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black),),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,width: 1),
                  borderRadius: BorderRadius.circular(40),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(width: 3,color: Colors.black)
                ),
              ),
            ),
          ),



          ElevatedButton(onPressed: () {
            var nm = name.text;
            var eml = email.text;
            var ps = password.text;
            var cnPs = conformPassword.text;

            if(nm.isNotEmpty && ps.isNotEmpty && cnPs.isNotEmpty && eml.isNotEmpty){
              Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
                  return BottomNavigationBarPage();
                },
                ),
              );
            }else{
              setState(() {
                unfill = "Fill all the details";
              });
            }
          },
              child: Text("Create Account")),
          Text(unfill,style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red),),
        ],
      ),
    );
  }
}