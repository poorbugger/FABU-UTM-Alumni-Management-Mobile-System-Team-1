import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sda/Report/Paticipant.dart';

class ParticipantCharts extends StatelessWidget {
 final List<Participant> data;

 ParticipantCharts({
  @required this.data});

 @override
 Widget build(BuildContext context) {
  // TODO: implement build
  List<charts.Series<Participant, String>> series
  = [
   charts.Series(
       id: "Participant",
       data: data,
       domainFn: (Participant series, _) => series.year,
       measureFn: (Participant series, _) => series.parti,
       colorFn: (Participant series, _) => series.barcolor)
  ];


  return Container(
   height: 400,
   padding: EdgeInsets.all(20),
   child: Card(
    child: Padding(
     padding: const EdgeInsets.all(8.0),
     child: Column(
         children: <Widget>[
         Text("No of Participant per Year"
    ),
    Expanded(child: charts.BarChart(series, animate: true,)
    ),
    ],
   ),
  ),)
  ,
  );

 }
}

