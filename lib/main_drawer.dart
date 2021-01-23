import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sda/auth/login.dart';

class MainDrawer extends StatefulWidget{
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  final GlobalKey<_MainDrawerState> _mainDrawerState = GlobalKey<_MainDrawerState>();

  SharedPreferences sharedPreferences;

  BuildContext get context => null;

  @override
  void initState() {
    checkLoginStatus();
  }

  checkLoginStatus() async {
    sharedPreferences = await SharedPreferences.getInstance();
    if(sharedPreferences.getString("token") == null) {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route<dynamic> route) => false);
    }
  }


  @override


  Widget build(BuildContext context) {
   return Drawer(

     child: Column(
       children: <Widget>[
         Container(
           width: double.infinity,
           padding: EdgeInsets.all(20),
           color: Theme.of(context).primaryColor,
           child: Center(
             child: Column(
               children: <Widget>[
                 Container(
                   width: 100,
                   height: 100,
                   margin: EdgeInsets.only(
                     top: 30,
                     bottom: 10,
                   ),
                   decoration: BoxDecoration(
                     shape: BoxShape.circle,
                     image: DecorationImage(image :NetworkImage('https://cdn4.iconfinder.com/data/icons/small-n-flat/24/user-alt-512.png'
                     ),
                       fit: BoxFit.fill
                     ),
                   ),
                 ),
                 Text(
                   'John',
                   style: TextStyle(
                     fontSize: 22,
                     color: Colors.white,
                   ),
                 ),

                 Text(
                   'Email',
                   style: TextStyle(
                     color: Colors.white,
                   ),
                 ),
               ],
             ),
           ),
         ),
         ListTile(
           leading: Icon(Icons.person),
           title: Text('Profile',
           style: TextStyle(fontSize: 18,),),
           onTap: () {
                  Navigator.pushNamed(context, '/viewprofile');
                  },
         ),

         ListTile(
           leading: Icon(Icons.calendar_today),
           title: Text('Events',
             style: TextStyle(fontSize: 18,),),
           onTap: () {
             Navigator.pushNamed(context, '/view_events_list');
           },
         ),

         ListTile(
           leading: Icon(Icons.arrow_back),
           title: Text('Logout',
             style: TextStyle(fontSize: 18,),),
           onTap: () {
             sharedPreferences.clear();
             sharedPreferences.commit();
             Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => LoginPage()), (Route<dynamic> route) => false);
           },
         ),


       ],
     ),
   );
  }
}