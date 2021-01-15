import 'package:flutter/material.dart';


class SponsorReport extends StatefulWidget
{
  @override
  _SponsorReport createState() => _SponsorReport();

}

class _SponsorReport extends State<SponsorReport>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sponsorship Involvement Report"),
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
                "Sponsorship Involvement Report",
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
    AssetImage assetImage = AssetImage('assets/images/sponsor.png');
    Image image = Image(image: assetImage, width: 550.0, height: 550.0);
    return Container(child: image,);
  }
}
