import 'package:flutter/material.dart';


class EventReport extends StatefulWidget
{
  @override
  _EventReport createState() => _EventReport();

}

class _EventReport extends State<EventReport>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Event Involvement Report"),
      ),
      body: Container(

        alignment: Alignment.center,
        color: Colors.blueGrey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            EventAssets(),
            Padding(
              padding: EdgeInsets.all(10.0),
              // ignore: deprecated_member_use

                child:Text(
                  "Event Involvement Report",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),


          ],
        ),
      ),

    );
  }
}

class EventAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/images/eventG.png');
    Image image = Image(image: assetImage, width: 550.0, height: 550.0);
    return Container(child: image,);
  }
}