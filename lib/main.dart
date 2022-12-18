
import 'package:world_time/pages/loading.dart';
import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/home.dart';// importing the home dart file

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':(context) => Loading(),//by deafult this will be shown first but we can change by using initial route
      '/home':(context) => Home(),
      '/location':(context) => ChooseLocation()
    },
  ));
}

