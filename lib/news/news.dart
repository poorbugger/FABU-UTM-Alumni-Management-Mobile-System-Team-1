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


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),

          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("Title",  textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Montserrat Medium')),
                subtitle: Text(country['newsName'],  textAlign: TextAlign.left, style: TextStyle( fontFamily: 'Montserrat Medium')),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text("Description", style: TextStyle( fontFamily: 'Montserrat Medium')),
                subtitle: Text(country['newsDescription'], style: TextStyle(fontFamily: 'Montserrat Regular')),
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