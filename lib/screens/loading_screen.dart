import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  var firstItem;
  var secondItem;
  var thirdItem;
  Future getLocation() async {
    var weatherData = await WeatherModel().getWeatherLocation();
    // print(weatherData);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LocationScreen(
                  locationWeather: weatherData,
                )));
  }

  @override
  void initState() {
    // TODO: implement initState
    getLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SpinKitSpinningLines(
        size: 100,
        color: Colors.white,
      ),
    );
  }
}
