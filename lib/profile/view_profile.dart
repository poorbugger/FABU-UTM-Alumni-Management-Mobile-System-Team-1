import 'package:flutter/material.dart';

import '../main_drawer.dart';


class Profile extends StatefulWidget {

  final Map alumni;
  const Profile({Key key, this.alumni}):super(key: key);
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Map alumni;
  _ProfileState({this.alumni});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 100.0,
        title: Text('My Profile'),
        centerTitle: true,
      ),
      drawer: MainDrawer(alumni: widget.alumni),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Icon(
                  Icons.account_circle,
                  color: Colors.grey[900],
                  size: 180.0,

              ),
            ),
            Text(
              widget.alumni['alumniName'].toString(),
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15,),
            Text(widget.alumni['graduateYear'].toString()),
            Divider(
              color: Colors.black,
              height: 50.0,
            ),
            SizedBox(height: 60,),
            Row(
              children: <Widget>[
                Icon(Icons.email_rounded),
                SizedBox(width: 10,),
                Text(
                  widget.alumni['alumniEmail'].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                ),

              ],
            ),
            Divider(
              color: Colors.black,
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                Icon(Icons.account_balance_sharp),
                SizedBox(width: 10),
                Text(
                  //alumniDegree
                  'Bachelor of Quantity Surveying',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
              height: 20.0,
            ),
            SizedBox(height: 20,),
            RaisedButton.icon(
                color: Colors.indigo[300],
                onPressed: () {
                  Navigator.pushNamed(context, '/viewalumniprofile');
                  // Navigator.of(context).pushAndRemoveUntil(
                  //             MaterialPageRoute(builder:
                  //                 (BuildContext context) => ViewAlumniProfile(alumni: alumni)), (Route<dynamic> route) => false);

                },
                icon: Icon(Icons.edit),
                label: Text('More Details..'))


          ],



        ),
      ),



    );
  }
}
