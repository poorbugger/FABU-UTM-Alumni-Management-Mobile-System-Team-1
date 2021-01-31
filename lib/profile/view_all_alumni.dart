import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sda/main_drawer.dart';
import 'package:sda/profile/view_other_alumni.dart';
import 'package:sda/concreteDio.dart';


class AllProfile extends StatefulWidget {
  final Map alumni;
  final String email;
  const AllProfile({Key key, this.alumni, this.email}):super(key: key);

  @override
  _AllProfileState createState() => _AllProfileState();
}

class _AllProfileState extends State<AllProfile> {

    String email;
   Map alumni;
   _AllProfileState({this.alumni,this.email});
  final ConcreteDio cd = ConcreteDio();

  @override
  Widget build(BuildContext context) {
    print(widget.email);
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        toolbarHeight: 100.0,
        title: Text('Connect'),
        centerTitle: true,
      ),
      drawer: MainDrawer(alumni: widget.alumni),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
        child: FutureBuilder<List>(
          future: cd.getAlumnis("alumnis"),
          builder: (BuildContext context, AsyncSnapshot<List> snapshot){
            if(snapshot.hasData)
              {

                snapshot.data.removeWhere((element) => element['alumniName'].toString()==widget.alumni['alumniName'].toString());
                print(snapshot.data.length);
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
                           leading: Icon(Icons.account_circle_sharp),
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