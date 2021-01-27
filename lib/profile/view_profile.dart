import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
//final Map alumni;
// ProfileState({this.alumni});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 100.0,
        title: Text('My Profile'),
        centerTitle: true,
      ),
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
              //alumni['alumniName'],
              'Ad O`Ryan Junior',
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15,),
            //alumni['graduateYear']
            Text('2018 - 2022'),
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
                  //alumni['alumniEmail']
                    'testemail.com',
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
