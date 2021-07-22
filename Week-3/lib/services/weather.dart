import 'package:http/http.dart';
import 'dart:convert';

class Weather {
  late String cityName;
  late String mainDescription;
  late String icon;
  late double temperature;
  late String description;

  Weather({required this.cityName});

  Future<void> getData() async {
    Response response = await get(Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=714ba01132adc4c051f1acbc4faadb62&units=metric"));
    Map data = jsonDecode(response.body);
    //print(data);
    mainDescription = data["weather"][0]["main"];
    description = data["weather"][0]["description"];
    icon = data["weather"][0]["icon"];
    temperature = data["main"]["temp"];
  }
}
