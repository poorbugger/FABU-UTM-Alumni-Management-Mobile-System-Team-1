import 'package:flutter/material.dart';

// ignore: camel_case_types
class event extends StatelessWidget{
  final Map country;
  event(this.country);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(country['name']),
      ),

      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          children: <Widget>[
            EventCard(title: country['name'].toString()),

            EventCard(title: country['name'].toString()),
          ],
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  EventCard({this.title});

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 10,
      child: Center(child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
    );
  }
}