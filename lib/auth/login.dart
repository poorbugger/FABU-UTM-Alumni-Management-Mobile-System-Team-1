import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sda/landing_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(statusBarColor: Colors.transparent));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: _isLoading ? Center(child: CircularProgressIndicator()) : ListView(
          children: <Widget>[
            headerSection(),
            textSection(),
            buttonSection(),
          ],
        ),
      ),
    );
  }

  signIn(String email, pass) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {
      'email': email.trim(),
      'password': pass.trim(),
    };
    var jsonResponse = null;
    var response = await http.post("https://reqres.in/api/login", body: data);
    //var response = await Dio().get("loginweburlhere"+email+"/"+"pass");
    if(response.statusCode == 200) {
      //response.data contains the valid user data.
      //
      //if(response.data['alumniEmail']==null||response.data['alumniEmail]=="")
      //
      // _isFalse=true; // indicate that the data is null and therefore should be redirected to login screen
      // _isLoading=false// to stop the spinner from spinning and redirect to the login screen
      //else
      // SharedPreferences.setString("validUser", "validUser"); // to pass to other pages to indicate that current session is valid
      // _isLoading=false // this time to stop spinner and redirect  to landing page
      // Navigator.of(context).pushAndRemoveUntil(
      //             MaterialPageRoute(builder:
      //                 (BuildContext context) => Landing(alumni: response.data)), (Route<dynamic> route) => false);
      // List<String> list=[response.data['alumniName'],response.data['alumniEmail']];
      // sharedPreferences.setStringList("drawer", list); // this one to share to the drawer a.k.a the sidebar
      jsonResponse = json.decode(response.body);

      if(jsonResponse != null) {
        setState(() {
          _isLoading = false;
        });
        sharedPreferences.setString("token", jsonResponse['token']);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder:
                (BuildContext context) => Landing()), (Route<dynamic> route) => false);
      }
    }
    else {
      setState(() {
        _isLoading = true;
      });
      print(response.body);
    }
  }

  Container buttonSection() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      margin: EdgeInsets.only(top: 15.0),
      // ignore: deprecated_member_use
      child: RaisedButton(
        onPressed: emailController.text == "" || passwordController.text == "" ? null : () {
          setState(() {
            _isLoading = true;
          });
          signIn(emailController.text, passwordController.text);
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Landing()), (Route<dynamic> route) => false);
        },
        elevation: 0.0,
        color: Colors.white30,
        child: Text("Login", style: TextStyle(color: Colors.black)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      ),
    );
  }

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  Container textSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: emailController,
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              labelText: "Email",
              labelStyle: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(height: 30.0),
          TextFormField(
            controller: passwordController,
            cursorColor: Colors.black,
            obscureText: true,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              labelText: "Password",
              labelStyle: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Container headerSection() {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
      child: Column(
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
    );
  }
}

