import 'package:flutter/material.dart';
import 'package:sda/Sponsor_Report/SponParticipant.dart';
import 'package:charts_flutter/flutter.dart' as charts;
class SponsorChart extends StatelessWidget{
final List<SponParticipant> data;

SponsorChart({@required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<SponParticipant, String>> series=[
      charts.Series(
    id: "SponParticipant",
    data: data,
    domainFn: (SponParticipant series, _) => series.year,
    measureFn: (SponParticipant series, _) => series.parti,
    colorFn: (SponParticipant series, _) => series.barcolor)
    ];


    return Container(
    height: 400,
    padding: EdgeInsets.all(20),
    child: Card(
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
    children: <Widget>[
    Text("Sponsorship Involvement Report"
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

