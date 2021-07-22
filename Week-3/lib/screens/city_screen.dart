import 'package:flutter/material.dart';
import 'package:weather/services/weather.dart';
import 'package:weather/services/arguments.dart';

class City extends StatefulWidget {
  const City({Key? key}) : super(key: key);

  @override
  _CityState createState() => _CityState();
}

class _CityState extends State<City> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          "Enter A City",
          style:TextStyle(
            color:Colors.amber[200],
          ),
        ),
        centerTitle:true,
      ),
      body: Column(
        children: [
          
          Expanded(
            flex:3,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  style:TextStyle(
                    fontSize:40,
                    color:Colors.amber[400],
                  ),
                  decoration:InputDecoration(
                    prefixIcon:Icon(
                      Icons.push_pin,
                      size:50,
                      color:Colors.amber[200],
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:BorderSide(
                        color:Colors.amberAccent,
                      ),
                      borderRadius:BorderRadius.circular(10),
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderSide:BorderSide(
                        color:Colors.amber,
                      ), 
                    ),
                    hintText:"Press Enter to Continue...",
                    hintStyle:TextStyle(
                      color:Colors.grey[600],
                      fontStyle:FontStyle.italic,
                      fontSize:40,
                    ),
                  ),
                  onSubmitted: (String str) async {
                    Weather instance = Weather(cityName: str);
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
                  },
                ),
              ),
            ),
          ),
          Expanded(
            flex:4,
            child:Image(
              image:AssetImage("assets/maps.png"),
            ),
          ),
          Expanded(
            flex:1,
            child:SizedBox(),
          ),
        ],
      ),
    );
  }
}
