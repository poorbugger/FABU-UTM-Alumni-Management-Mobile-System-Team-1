import 'package:flutter/material.dart';


class MainDrawer extends StatefulWidget{


  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  final GlobalKey<_MainDrawerState> _mainDrawerState = GlobalKey<_MainDrawerState>();

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
           leading: Icon(Icons.home),
           title: Text('Home',
             style: TextStyle(fontSize: 18,),),
           onTap: () {
             Navigator.pushNamed(context, '/landing');
           },
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
           onTap: null,
         ),


       ],
     ),
   );
  }
}