import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primaryColor: Colors.blueGrey[400],
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 80,),
                Image.asset('assets/images/LOGO-UTM.png'),
                SizedBox(height: 30,),
                Text ('Sekolah Senibina Skudai', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color:
                Colors.black),),
                SizedBox(height: 30,),
                Text ('Sign In', style: TextStyle(fontSize: 25,color:
                Colors.grey),)
              ],
            ),
            SizedBox(height: 60.0,),
            TextField(
              decoration: InputDecoration(
                labelText: "UserID",
                labelStyle: TextStyle(fontSize: 20.0),
                filled: true,
              ),
            ),
            SizedBox(height: 20.0,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 20.0),
                filled: true,
              ),
            ),
            SizedBox(height: 20,),
            Column(
              children: <Widget>[
                ButtonTheme(
                  height:50,
                  disabledColor: Colors.blueAccent,
                  // ignore: deprecated_member_use
                  child:RaisedButton(
                    disabledElevation: 4.0,
                    onPressed: () {},
                    child: Text("Login", style: TextStyle(fontSize: 20,color:
                    Colors.white)),
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
