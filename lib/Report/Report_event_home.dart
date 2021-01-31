import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sda/Report/Participant_Charts.dart';
import 'package:sda/Report/Paticipant.dart';

class ReportEventHome extends StatelessWidget
{
final List<Participant> data=[
 Participant(year: "2015", parti: 30, barcolor: charts.ColorUtil.fromDartColor
   (Colors.blue)),
  Participant(year: "2016", parti: 40, barcolor: charts.ColorUtil.fromDartColor
    (Colors.blue)),
  Participant(year: "2017", parti: 35, barcolor: charts.ColorUtil.fromDartColor
    (Colors.blue)),
  Participant(year: "2018", parti: 29, barcolor: charts.ColorUtil.fromDartColor
    (Colors.blue)),
  Participant(year: "2019", parti: 20, barcolor: charts.ColorUtil.fromDartColor
    (Colors.blue)),
  Participant(year: "2020", parti: 10, barcolor: charts.ColorUtil.fromDartColor
    (Colors.blue)),
];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Event Involvement Report"),
        ),
      body: Center(
        child: ParticipantCharts(data: data,)
      )
    );
  }
}