import 'package:flutter/material.dart';

class ViewAlumniProfile extends StatefulWidget {
  final Map alumni;
  const ViewAlumniProfile({Key key, this.alumni}):super(key: key);
  @override
  _ViewAlumniProfileState createState() => _ViewAlumniProfileState();
}

class _ViewAlumniProfileState extends State<ViewAlumniProfile> {
  Map alumni;
  _ViewAlumniProfileState({this.alumni});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
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
              widget.alumni['alumniName'],
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15,),
            Text("Graduated in: "+widget.alumni['graduateYear'].toString()),
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
                  widget.alumni['alumniEmail'],
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
                 widget.alumni['eduLevel']+" in Architecture",
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
                  widget.alumni['alumniAddress']['region'] +" "+widget.alumni['alumniAddress']['houseNo']+", "+ widget.alumni['alumniAddress']['streetName'],
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
                SizedBox(width: 12),
                Text(
                  widget.alumni['alumniAddress']['postalCode'] +" "+widget.alumni['alumniAddress']['city']+", "+ widget.alumni['alumniAddress']['state']+", "+ widget.alumni['alumniAddress']['country'],
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
