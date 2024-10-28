import 'package:flutter/material.dart';
import 'Navigation/BottomNavigationBar.dart';
import 'LoginPages/createAccount_page.dart';

void main(){
  runApp(MyApp());
}

var col =1;

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
      ),
      title: 'MEdiaApp',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomePageBlack_Status();
  }
}

class HomePageBlack_Status extends State<HomePage>{
  var userEmail = TextEditingController();
  var userPassword = TextEditingController();
  var unFill ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Center(
          child: Text("Log In",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Card(
              elevation: 30,
                shadowColor: Colors.black,
                child: Container(
                  // color: Colors.black,
                  height: 400,
                    width: 300,
                    child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("LogIn",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w800),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: userEmail,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.mail,color: Colors.black,),
                                  label: Text("Email",style: TextStyle(color: Colors.black),),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    ),
                                    borderRadius: BorderRadius.circular(20)
                                  )
                                ),
                              ),
                            ),


                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                obscureText: true,
                                obscuringCharacter: '*',
                                controller: userPassword,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.password,color: Colors.black,),
                                  label: Text("Password",style: TextStyle(color: Colors.black),),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      width: 3,
                                      color: Colors.black,
                                    )
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.black,
                                    )
                                  )
                                ),
                              ),
                            ),

                            SizedBox(height: 20,),


                            ElevatedButton(onPressed: (){
                              var em = userEmail.text;
                              var ps = userPassword.text;
                              if(em.isNotEmpty && ps.isNotEmpty)  {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) { return BottomNavigationBarPage();},
                                  ),
                                );
                              }
                              else{
                                setState(() {
                                  unFill = "Email or password is in correct";
                                });
                              }
                            },
                                child: Text("Login"),
                            ),

                            SizedBox(height: 10,),

                            InkWell(
                                child: Text("Dont have a account ?"),
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) { return CreateAccountPage();},
                                  ),
                                );
                                  },
                            ),

                            Text(unFill,style: TextStyle(color: Colors.red,fontWeight: FontWeight.w400),)
                          ],
                        ))),
              ),
          ),
      ),
    );
  }
}