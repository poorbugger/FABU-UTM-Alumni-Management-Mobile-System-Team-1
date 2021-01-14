import 'package:flutter/material.dart';

// ignore: camel_case_types
class event extends StatelessWidget{
  final name;
  event(this.name);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(name),
      ),

      body: Container(
        child: Padding(
    padding: const EdgeInsets.symmetric(vertical: 10.0 ,horizontal: 20.0),
        child: Text('Event Description'),
      ),
      ),
    );
  }
}