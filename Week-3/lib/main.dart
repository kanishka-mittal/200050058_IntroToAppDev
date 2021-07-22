import 'package:flutter/material.dart';
import 'package:weather/screens/city_screen.dart';
import 'package:weather/screens/loading_screen.dart';
import 'package:weather/screens/weather_screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => Loading(),
      "/city": (context) => City(),
      "/weather": (context) => Weather(),
    },
  ));
}