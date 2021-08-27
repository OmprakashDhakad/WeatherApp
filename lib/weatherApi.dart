import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

import 'models/weather_model.dart';

class WeatherApi extends StatefulWidget {
  @override
  _WeatherApiState createState() => _WeatherApiState();
}

class _WeatherApiState extends State<WeatherApi> {
  Future<Weather> _getWeatherData() async {
    var url = Uri.parse('https://api.openweathermap.org/data/2.5/weather?appid=b95be69f36cc9a7a0a4f620e24fa2f29&q=kota');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response of body: ${response.body}');
    var jsonData = json.decode(response.body);
    final weather = weatherFromJson(jsonData);

    return weather;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1D2651),
      ),
      body: Container(
          child: FutureBuilder<Weather>(
        future: _getWeatherData(),
        builder: (context, snapshot) {
          return Column(
            children: [
              Text(snapshot.data.main.feelsLike.toString()),
              Text(snapshot.data.name),
            ],
          );
        },
      )),
    );
  }
}
