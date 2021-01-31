import 'package:flutter/material.dart';
import 'package:sda/main_drawer.dart';




class LogActivityPage extends StatefulWidget {
  final Map alumni;
  const LogActivityPage({Key key, this.alumni}):super(key: key);
  //Dont delete the code above

  @override
  _LogActivityPageState createState() => _LogActivityPageState();
}

class _LogActivityPageState extends State<LogActivityPage> {
  Map alumni;
  _LogActivityPageState({this.alumni});
  //Dont delete the code above
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Log Activity"),
      ),
      drawer: MainDrawer(alumni: widget.alumni),
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
    AssetImage assetImage = AssetImage('assets/images/logactivity.png');
    Image image = Image(image:assetImage, width:130.0, height:130.0);
    return Container(child: image,);

  }
}