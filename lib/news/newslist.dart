import 'package:sda/concreteDio.dart';
import 'package:flutter/material.dart';
import 'package:sda/events/event.dart';
import 'package:dio/dio.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sda/main_drawer.dart';
import 'package:sda/news/news.dart';

class AllNews extends StatefulWidget {
  final Map alumni;
  const AllNews({Key key, this.alumni}):super(key: key);
  @override
  _AllNewsState createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {

  Map alumni;
  _AllNewsState({this.alumni});
  //Dont delete the code above
  final ConcreteDio cD = ConcreteDio();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News'),
      ),
      drawer: MainDrawer(alumni: widget.alumni),
      body: Container(
        padding: EdgeInsets.all(10),
        child: FutureBuilder<List>(
            future: cD.getNews("news"), // a previously-obtained Future<String> or null
            builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
              if(snapshot.hasData) //Implementation of FlowBased Construction Design
                  {
                return ListView.builder(
                    itemCount:snapshot.data.length,
                    itemBuilder: (BuildContext context, int index){
                      return GestureDetector(
                        onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>news_feed(snapshot.data[index]),
                        ),
                        );
                        },

                        child: Card(
                          child: ListTile(
                            leading: Icon(Icons.web),
                            title: Text(snapshot.data[index]['newsName']),
                            subtitle: Text(snapshot.data[index]['newsDate']),
                          ),
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
