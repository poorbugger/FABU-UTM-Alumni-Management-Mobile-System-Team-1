import 'package:flutter/material.dart';
import 'package:sda/log/view_activity_log.dart';
import 'package:sda/auth//login.dart';
import 'package:sda/profile/view_all_alumni.dart';
import 'package:sda/profile/view_alumni_profile.dart';
import 'package:sda/profile/view_profile.dart';
import 'landing_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/', //later when we done /loading will be default
    routes: {
      '/':(context) => LoginPage(),
      '/viewprofile':(context)=> Profile(),
      '/viewalumniprofile':(context)=> ViewAlumniProfile(),
      '/search':(context)=> AllProfile(),
      '/landing':(context) => Landing(),
      '/logactivity':(context) => LogActivityPage(),

    },
  ));
}