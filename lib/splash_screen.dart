


import 'package:covid19/component/networkig.dart';
import 'package:covid19/Screen1.dart';
import 'package:flutter/material.dart';




class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
var covidData;
  @override
  void initState() {
    super.initState();
    getData();
  }
  void getData() async {

    NetworkHelper networkHelper = NetworkHelper('https://bing.com/covid/data');
     covidData = await networkHelper.getData();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FirstScreen(data: covidData,)),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDADEEA),
      body: Center(
        child: Image.asset('images/covid.png'),
      ),

    );
  }
}
//
//double temperature = decodedData['main']['temp'];
//int condition =decodedData['weather'][0]['id'];
//String cityName = decodedData['name'];
