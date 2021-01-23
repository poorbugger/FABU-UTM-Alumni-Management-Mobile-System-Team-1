import 'package:flutter/material.dart';
import 'package:sda/Report/Sponsor.dart';
import 'package:sda/events/event.dart';
import 'package:sda/events/eventlist.dart';
import 'package:sda/news/newslist.dart';
import 'package:sda/log/view_activity_log.dart';
import 'package:sda/auth//login.dart';
import 'package:sda/profile/view_all_alumni.dart';
import 'package:sda/profile/view_alumni_profile.dart';
import 'package:sda/profile/view_profile.dart';
import 'Report/EventInvolvement.dart';
import 'landing_page.dart';

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
      '/event':(context) => EventReport(),
      '/Sponsorship':(context) => SponsorReport(),
    },
  ));
}