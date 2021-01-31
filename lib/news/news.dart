import 'package:flutter/material.dart';

// ignore: camel_case_types
class news_feed extends StatelessWidget{
  final Map country;
  news_feed(this.country);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(country['newsName']),
      ),


      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.blue, Colors.red])),
        child: Padding(
          padding: const EdgeInsets.all(12.0),

          child: Column(
            children: <Widget>[
              ListTile(
                //title: Text("Title",  textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Montserrat Medium', fontSize: 30, color: Colors.white)),
                title: Text(country['newsName'],  textAlign: TextAlign.left, style: TextStyle( fontFamily: 'Montserrat Medium', fontSize: 30, color: Colors.white)),
              ),

              SizedBox(height: 20),
              ListTile(
                title: Text("Date:", style: TextStyle( fontFamily: 'Montserrat Medium', fontSize: 20, color: Colors.white)),
                subtitle: Text(country['newsDate'], style: TextStyle(fontFamily: 'Montserrat Regular', fontSize: 15, color: Colors.white)),
              ),

              SizedBox(height: 20),
              ListTile(
                title: Text("Description", style: TextStyle( fontFamily: 'Montserrat Medium', fontSize: 20, color: Colors.white)),
                subtitle: Text(country['newsDescription'], style: TextStyle(fontFamily: 'Montserrat Regular', fontSize: 15, color: Colors.white)),
              ),
            ],
          ),

        ),
      ),
      // body: Container(
      //   padding: EdgeInsets.all(10),
      //   child: GridView(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      //     children: <Widget>[
      //       EventCard(title: country['eventName'].toString()),
      //
      //       EventCard(title: country['eventDescription'].toString()),
      //     ],
      //   ),
      // ),
    );
  }
}