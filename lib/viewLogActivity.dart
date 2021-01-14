import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes:{
      //'/sponsorship': (context)=> ();
      //'/event': (context)=> ()
      //}
      title: 'Log Activity',
      theme: ThemeData(
        primaryColor: Colors.blueGrey[600],
      ),
      home: LogActivityPage(),
    );
  }
}

class LogActivityPage extends StatefulWidget {
  @override
  _LogActivityPageState createState() => _LogActivityPageState();
}

class _LogActivityPageState extends State<LogActivityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Log Activity"),
      ),
      body: Container(

        alignment: Alignment.center,
        color: Colors.blueGrey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LogImageAsset(),
            Padding(
              padding: EdgeInsets.all(10.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Sponsorship');
                },
                padding: EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical:10.0,
                ),
                color:  Colors.blueGrey[100],
                textColor: Colors.black,
                child:Text(
                  "Sponsorship Involvement",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            LogImageAsset(),
            Padding(
              padding: EdgeInsets.all(10.0),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/event');
                },
                padding: EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical:10.0,
                ),
                color:  Colors.blueGrey[100],
                textColor: Colors.black,
                child:Text(
                  "Event Involvement",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

class LogImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/images/log.png');
    Image image = Image(image:assetImage, width:130.0, height:130.0);
    return Container(child: image,);

  }
}