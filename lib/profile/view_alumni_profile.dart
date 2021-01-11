import 'package:flutter/material.dart';

class ViewAlumniProfile extends StatefulWidget {
  @override
  _ViewAlumniProfileState createState() => _ViewAlumniProfileState();
}

class _ViewAlumniProfileState extends State<ViewAlumniProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo[600],
        toolbarHeight: 100.0,
        title: Text('More Details'),
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
              height: 20.0,
            ),
            SizedBox(height: 40,),
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
            Row(
              children: <Widget>[
                Icon(Icons.work_sharp),
                SizedBox(width: 10),
                Text(
                  'Athens Corp. Ltd',
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
                Icon(Icons.location_on_sharp),
                SizedBox(width: 10),
                Text(
                  'Athens, Greece',
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



          ],



        ),
      ),



    );
  }
}
