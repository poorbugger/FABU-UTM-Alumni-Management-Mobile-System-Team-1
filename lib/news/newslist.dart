import 'package:flutter/material.dart';
import 'package:sda/news/news.dart';
import 'package:dio/dio.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class AllNews extends StatefulWidget {
  @override
  _AllNewsState createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  Future<List> news;

  Future<List> getNews() async{
    var response = await Dio().get("https://restcountries.eu/rest/v2/all");
    return response.data;
  }


  @override
  void initState() {
    news = getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Event'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: FutureBuilder<List>(
            future: news, // a previously-obtained Future<String> or null
            builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
              if(snapshot.hasData)
              {
                return ListView.builder(
                    itemBuilder: (BuildContext context, int index){
                      return GestureDetector(
                        onTap: (){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=> news_feed(snapshot.data[index]['name']),
                        ),
                        );
                        },

                        child: Card(
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                              child:Text(snapshot.data[index]['name'], style: TextStyle(fontSize: 18)),)
                        ),
                      );
                    }
                );

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