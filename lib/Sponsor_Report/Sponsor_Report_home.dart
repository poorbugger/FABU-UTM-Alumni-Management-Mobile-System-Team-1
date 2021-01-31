import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sda/Sponsor_Report/SponParticipant.dart';
import 'package:sda/Sponsor_Report/SponsorChart.dart';

class SponsorReportHome extends StatelessWidget
{
  final List<SponParticipant> data=[
    SponParticipant(year: "2015", parti: 30, barcolor: charts.ColorUtil.fromDartColor
      (Colors.blue)),
    SponParticipant(year: "2016", parti: 40, barcolor: charts.ColorUtil.fromDartColor
      (Colors.blue)),
    SponParticipant(year: "2017", parti: 35, barcolor: charts.ColorUtil.fromDartColor
      (Colors.blue)),
    SponParticipant(year: "2018", parti: 29, barcolor: charts.ColorUtil.fromDartColor
      (Colors.blue)),
    SponParticipant(year: "2019", parti: 20, barcolor: charts.ColorUtil.fromDartColor
      (Colors.blue)),
    SponParticipant(year: "2020", parti: 10, barcolor: charts.ColorUtil.fromDartColor
      (Colors.blue)),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Event Involvement Report"),
        ),
        body: Center(
            child: SponsorChart(data: data,)
        )
    );
  }
}