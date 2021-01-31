import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SponParticipant{

  final String year;
  final int parti;
  final charts.Color barcolor;

  SponParticipant({
      @required this.year,
      @required this.parti,
     @required this.barcolor
  });
}