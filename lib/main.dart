import 'package:flutter/material.dart';
import 'package:sda/Report/Report_event_home.dart';
import 'package:sda/events/eventlist.dart';
import 'package:sda/news/newslist.dart';
import 'package:sda/log/view_activity_log.dart';
import 'package:sda/auth//login.dart';
import 'package:sda/profile/view_all_alumni.dart';
import 'package:sda/profile/view_alumni_profile.dart';
import 'package:sda/profile/view_profile.dart';
import 'landing_page.dart';
import 'package:sda/Sponsor_Report/Sponsor_Report_home.dart';

void main() {

  runApp(MaterialApp(
    initialRoute: '/', //later when we done /loading will be default
    routes: {
      '/view_events_list':(context)=> new AllEvents(),
     // '/view_events':(context)=> event(),
      '/view_news_list':(context)=> new AllNews(),
      '/':(context) => LoginPage(),
      '/viewprofile':(context)=> Profile(),
      '/viewalumniprofile':(context)=> ViewAlumniProfile(),
      '/search':(context)=> AllProfile(),
      '/landing':(context) => Landing(),
      '/logactivity':(context) => LogActivityPage(),
      //'/event':(context) => EventReport(),

      '/event':(context) => ReportEventHome(),
      //'/Sponsorship':(context) => SponsorReport(),
      '/Sponsorship':(context) => SponsorReportHome(),
    },
  ));
}