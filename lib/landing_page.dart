import 'package:flutter/material.dart';


class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          //todo: implement logout fnc
          padding: const EdgeInsets.symmetric(vertical: 10.0 ,horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex:1,
                  child: RaisedButton(
                    color: Colors.indigo[300],
                    onPressed: () {
                      Navigator.pushNamed(context, '/viewprofile');
                      },
                    child: Text('Profile'),

                  ),
                ),


              ],
            ),
            Row(
                children: <Widget>[
                  Expanded(
                    flex:1,
                    child: RaisedButton(
                      color: Colors.indigo[300],
                      onPressed: () {Navigator.pushNamed(context, '/search');},
                      child: Text('Connect with others'),

                    ),
                  ),
                ],
              ),

              Row(
                children: <Widget>[
                  Expanded(
                    flex:1,
                    child: RaisedButton(
                      color: Colors.indigo[300],
                      onPressed: () {Navigator.pushNamed(context, '/logactivity');},
                      child: Text('My activities'),

                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),



    );
  }
}
