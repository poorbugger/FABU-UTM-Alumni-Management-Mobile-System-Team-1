import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sda/profile/view_other_alumni.dart';
import 'package:sda/concreteDio.dart';

class AllProfile extends StatefulWidget {
  @override
  _AllProfileState createState() => _AllProfileState();
}

class _AllProfileState extends State<AllProfile> {
  final ConcreteDio cd = ConcreteDio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 100.0,
        title: Text('Connect'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
        child: FutureBuilder<List>(
          future: cd.getAlumnis("alumnis"),
          builder: (BuildContext context, AsyncSnapshot<List> snapshot){
            if(snapshot.hasData)
              {
                snapshot.data.sort((a,b)=>a['alumniName'].compareTo(b['alumniName']));
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

                           title: Text(snapshot.data[index]['alumniName']),
                         ),
                       ),
                     );
                    });
              }


              else {
              return SpinKitDualRing(
                color: Colors.blue[900],
                size: 50.0,
              );
            }
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