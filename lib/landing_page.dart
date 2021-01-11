import 'package:flutter/material.dart';
import 'profile/view_profile.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0 ,horizontal: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex:1,
                  child: RaisedButton(
                    color: Colors.indigo[300],
                    onPressed: () {Navigator.pushNamed(context, '/viewprofile');},
                    child: Text('Profile'),

                  ),
                ),


              ],
            ),
          ),



          ],
        ),
      ),



    );
  }
}
