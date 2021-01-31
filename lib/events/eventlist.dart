import 'package:sda/concreteDio.dart';
import 'package:flutter/material.dart';
import 'package:sda/events/event.dart';
import 'package:dio/dio.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sda/main_drawer.dart';

class AllEvents extends StatefulWidget {
  final Map alumni;
  const AllEvents({Key key, this.alumni}):super(key: key);
  //Dont delete the code above
  @override
  _AllEventsState createState() => _AllEventsState();
}

class _AllEventsState extends State<AllEvents> {
  Map alumni;
  _AllEventsState({this.alumni});
  //Dont delete the code above
  final ConcreteDio cD = ConcreteDio();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      drawer: MainDrawer(alumni: widget.alumni),
      body: Container(
          padding: EdgeInsets.all(10),
    child: FutureBuilder<List>(
    future: cD.getEvents("events"), // a previously-obtained Future<String> or null
    builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if(snapshot.hasData) //Implementation of FlowBased Construction Design
          {
            return ListView.builder(
                itemCount:snapshot.data.length,
                itemBuilder: (BuildContext context, int index){
              return GestureDetector(
                onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>event(snapshot.data[index]),
                  ),
                );
                },

                child: Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                      child:Text(snapshot.data[index]['eventName'], style: TextStyle(fontSize: 18)),)
                ),
              );
            }
            );
          }

        else if(snapshot.data == null)
          {

              return Text('No data is found');
          }

        else
          {
            return SpinKitDualRing(
                color: Colors.blue[900],
                size: 50.0,
            );
          }
    }
    ),
    ),

      );

  }
}
