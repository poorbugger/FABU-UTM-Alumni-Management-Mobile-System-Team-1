import 'package:flutter/material.dart';


// ignore: camel_case_types
class event extends StatelessWidget{
  final Map country;
  event(this.country);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(country['eventName']),
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),

            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Event:",  textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontFamily: 'Montserrat Medium')),
                  subtitle: Text(country['eventName'],  textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontFamily: 'Montserrat Medium')),
                ),

                SizedBox(height: 20),
                _buildButtonGroup(),

                SizedBox(height: 20),
                ListTile(
                  title: Text("Description", style: TextStyle(fontSize: 20, fontFamily: 'Montserrat Medium')),
                  subtitle: Text(country['eventDescription'], style: TextStyle(fontSize: 15, fontFamily: 'Montserrat Regular')),
                ),
              ],
            ),

        ),
      ),
      // body: Container(
      //   padding: EdgeInsets.all(10),
      //   child: GridView(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      //     children: <Widget>[
      //       EventCard(title: country['eventName'].toString()),
      //
      //       EventCard(title: country['eventDescription'].toString()),
      //     ],
      //   ),
      // ),
    );
  }

  Padding _buildSchedule(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(

      ),
    );
  }


  Container _buildButtonGroup(){
    return Container(
      width: double.infinity,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          MaterialButton(
            onPressed: () {

            },
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(country['eventDate'], style: TextStyle(fontSize: 15, fontFamily: "Montserrat Regular", color: Colors.white,
              ),
              ),
            ),
          ),

          MaterialButton(
            onPressed: () {

            },
            color: Colors.cyan,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(country['eventVenue'], style: TextStyle(fontSize: 15, fontFamily: "Montserrat Regular", color: Colors.white,
              ),
              ),
            ),
          )
        ]
      )
    );
  }


  Stack _buildStack(BuildContext context){
    return Stack(
        children: <Widget>[
            Hero(tag: country['eventName'], child: Container(
              height: 250,
                width: double.infinity,
              child: Text(country['eventDescription'], style: TextStyle(fontSize: 15, fontFamily: "Montserrat Regular")),
            ),
            ),

        ],
    );
    
    
  }

}

// class EventCard extends StatelessWidget {
//   final String title;
//   EventCard({this.title});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(elevation: 10,
//       child: Center(child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
//     );
//   }
// }