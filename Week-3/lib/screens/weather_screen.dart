import 'package:flutter/material.dart';
import 'package:weather/services/arguments.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    Arguments data = ModalRoute.of(context)!.settings.arguments as Arguments;
    String imgUrl = "http://openweathermap.org/img/wn/${data.icon}@2x.png";
    late String bgImg;
    switch (data.mainDescription) {
      case ("Thunderstorm"):
        bgImg = "assets/thunderstorm.jpg";
        break;
      case ("Drizzle"):
        bgImg = "assets/dizzle.jpg";
        break;
      case ("Rain"):
        bgImg = "assets/rain.jpg";
        break;
      case ("Snow"):
        bgImg = "assets/snow.jpg";
        break;
      case ("Clear"):
        bgImg = "assets/clear.jpg";
        break;
      default:
        bgImg = "assets/default.jpg";
        break;
    }
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bgImg),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                flex:1,
                child:SizedBox(),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pushNamed(context, "/");
                          },
                          icon: Icon(
                            Icons.edit_location,
                            size:50,
                            color:Colors.amberAccent,
                          ),
                          label: Text(
                            "Get Current Location",
                          ),
                          style:ElevatedButton.styleFrom(
                            primary:Colors.grey[800],
                            textStyle:TextStyle(
                              fontSize:20,
                            ),
                            padding:EdgeInsets.all(10),
                          ),
                      ),
                      ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pushNamed(context, "/city");
                          },
                          icon: Icon(
                            Icons.push_pin,
                            size:50,
                            color:Colors.amberAccent,
                          ),
                          label: Text(
                            "Enter A City",
                          ),
                          style:ElevatedButton.styleFrom(
                            primary:Colors.grey[800],
                            textStyle:TextStyle(
                              fontSize:20,
                            ),
                            padding:EdgeInsets.all(10),
                          ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${data.temperature.toString()}°C   ",
                      style: TextStyle(
                          fontSize: 100,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(imgUrl),
                      radius: 70,
                      backgroundColor: Colors.grey[400],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color:Colors.grey[800],
                        child: Center(
                          child: Text(
                            "The weather in ${data.cityName} is",
                            style:TextStyle(
                              color:Colors.grey[200],
                              fontSize:50,
                            ),
                          ),
                        ),
                      )),
                    Expanded(
                      flex: 1, 
                      child: Container(
                        color:Colors.grey[900],
                        child: Center(
                          child: Text(
                            "${data.description}",
                            style:TextStyle(
                              fontSize: 80,
                              color:Colors.amberAccent,
                            ),
                          ),
                        ),
                      )
                    ),
                  ],
                ),
              ),
              Expanded(
                flex:1,
                child:SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
