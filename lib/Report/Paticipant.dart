import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/cupertino.dart';
class Participant{
  final String year;
  final int parti;
  final charts.Color barcolor;

Participant({
  @required this.year,
  @required this.parti,
  @required this.barcolor});

}