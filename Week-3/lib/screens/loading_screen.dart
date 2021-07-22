import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather/services/arguments.dart';
import 'package:weather/services/weather.dart';
import 'package:weather/services/location.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWeather() async {
    NewLocation location=NewLocation();
    await location.getCurrentlocation();
    Weather instance = Weather(cityName: location.cityName);
    await instance.getData();
    Navigator.pushReplacementNamed(context, "/weather",
        arguments: Arguments(
            cityName: instance.cityName,
            mainDescription: instance.mainDescription,
            temperature: instance.temperature,
            icon: instance.icon,
            description: instance.description,
        )
    );
  }

  @override
  void initState() {
    super.initState();
    setupWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: SpinKitHourGlass(color: Colors.amberAccent, size: 300),
      ),
    );
  }
}
