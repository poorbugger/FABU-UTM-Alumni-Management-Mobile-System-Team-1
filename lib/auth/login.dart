import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sda/landing_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoading = false;
  bool _isValidate = false;
  bool _isUserValid= false;
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
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
            Center(
              child: Text(
                _isUserValid ? "Your credentials might be wrong" : "",
                style: TextStyle(
                  color: Colors.red,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  signIn(String email, pass) async {
   var response = await Dio().get("https://alumni-api-new.herokuapp.com/index");
   List alumni = response.data;
   var validalumni;
   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
   
   if(response.statusCode==200)
     {
        for(int i=0;i<alumni.length;i++)
          {
            if(alumni[i]['alumniEmail'].toString()==email && alumni[i]['password']==pass)
              {

                validalumni=alumni[i];
                sharedPreferences.setString("user", "valid");
                sharedPreferences.setString("email", validalumni['alumniEmail'].toString());
                print(ModalRoute.of(context).settings.name);
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Landing(alumni: validalumni)),(Route<dynamic> route) => false);

                _isUserValid=true;
              }
            else{
              setState(() {
                _isLoading=false;
                _isUserValid=true;
                _isValidate=false;
              });
            }
          }
       
     }
   
   else{
      setState(() {
        _isLoading=false;
        _isValidate=false;
      });
     
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
        onPressed:(){
          if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
            setState(() {
              _isLoading = true;
            });
            signIn(emailController.text, passwordController.text);
          }
          else{
            setState(() {
              _isValidate=true;
            });
          }
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
              errorText: _isValidate ? "This field can't be empty": null,
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
              errorText: _isValidate ? "This field can't be empty":null,
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

