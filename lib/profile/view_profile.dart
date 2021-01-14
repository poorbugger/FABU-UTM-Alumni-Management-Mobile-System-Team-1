import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo[600],
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
              'Ad O`Ryan Junior',
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15,),
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
                },
                icon: Icon(Icons.edit),
                label: Text('More Details..'))


          ],



        ),
      ),



    );
  }
}
