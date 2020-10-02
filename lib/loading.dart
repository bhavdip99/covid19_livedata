


import 'package:covid19/component/networkig.dart';
import 'package:covid19/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';




class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getData();
  }
  void getData() async {

    NetworkHelper networkHelper = NetworkHelper('https://corona.lmao.ninja/v2/countries');
    var covidData = await networkHelper.getData();

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen(data: covidData,)),
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xffDADEEA),
      body: Center(
        child: SpinKitRing(
          color: Colors.white,
          size: 100,
        ),
      ),

    );
  }
}
//
//double temperature = decodedData['main']['temp'];
//int condition =decodedData['weather'][0]['id'];
//String cityName = decodedData['name'];
