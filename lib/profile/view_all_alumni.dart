import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sda/profile/view_other_alumni.dart';
import 'package:sda/concreteDio.dart';
import 'dart:async';
class AllProfile extends StatefulWidget {
  @override
  _AllProfileState createState() => _AllProfileState();
}

class _AllProfileState extends State<AllProfile> {
  final ConcreteDio cd = ConcreteDio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.indigo[600],
        toolbarHeight: 100.0,
        title: Text('Others'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
        child: FutureBuilder<List>(
          future: cd.getAlumnis(),
          builder: (BuildContext context, AsyncSnapshot<List> snapshot){
            if(snapshot.hasData)
              {
                return ListView.builder(
                    itemCount:snapshot.data.length,
                    itemBuilder: (BuildContext context, int index){
                     return GestureDetector(
                       onTap: () {
                         Navigator.of(context).push(
                           MaterialPageRoute(
                             builder: (context)=> OtherAlumni(snapshot.data[index]),
                           ),
                         );
                       },
                       child: Card(
                         child: ListTile(

                           title: Text(snapshot.data[index]['name']),
                         ),
                       ),
                     );
                    });
              }



              return SpinKitDualRing(
                color: Colors.blue[900],
                size: 50.0,
              );


          },



        ),
      ),









    );
  }
}

class Alumni
{
  String name;
  String email;
  String id;

  Alumni(this.name,this.email,this.id);

}