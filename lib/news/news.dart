import 'package:flutter/material.dart';

// ignore: camel_case_types
class news_feed extends StatelessWidget{
  final name;
  news_feed(this.name);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(name),
      ),
    );
  }
}