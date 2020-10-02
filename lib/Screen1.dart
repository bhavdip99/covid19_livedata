
import 'loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:covid19/component/reusable_card.dart';
class FirstScreen extends StatefulWidget {
  FirstScreen({this.data});
  final data;
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var covidData;

  @override
  void initState(){
    super.initState();
    covidData = widget.data;

  }


  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(

        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffDEE2EE),

          ),
        child: Column(
          children: <Widget>[
            Expanded(

              child: Padding(
                padding: const EdgeInsets.only(top:30.0,),
                child: Column(
                  children: <Widget>[
                    Image.asset('images/covid.png'),
                    SizedBox(height: 20,),
                    Text('COVID 19 LIVE DATA',style: TextStyle(fontSize: 30,color: Colors.black),)
                  ],
                ),
              ),
            ),
            Expanded(

                child: Column(
                  children: <Widget>[
                    Flexible(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0,right: 20),
                        child: Row(
                          children: <Widget>[
                            Expanded(child: new ReusableCard(color1: Color(0xffC4AEF5),color2: Color(0xffDADEEA) ,icon: Entypo.line_graph,iconcolor: Color(0xff7844EE),number: covidData["totalConfirmed"],color:Color(0xff7844EE) ,text: 'Infected',),),
                            SizedBox(width: 20,),
                            Expanded(child: new ReusableCard(color1: Color(0xffF6A0C5),color2: Color(0xffDADEEA),icon: Entypo.bug,iconcolor: Colors.red,color:Colors.red,number: covidData["totalDeaths"] ,text: 'Death',),)
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 1,
                        child: SizedBox(height: 10,)),
                    Flexible(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0,right: 20),
                        child: Row(
                          children: <Widget>[
                            Expanded(child: new ReusableCard(color1: Color(0xffD5EEE1),color2: Color(0xffDADEEA),icon: Entypo.heart,iconcolor: Colors.green,number: covidData["totalRecovered"],color:Colors.green ,text: 'Recovered',)),
                            SizedBox(width: 20,),
                            Expanded(child: new ReusableCard(color1: Color(0xffF9F1DE),color2: Color(0xffDADEEA),icon: Entypo.users,iconcolor: Color(0xffF3B431),number:covidData["totalConfirmedDelta"],color:Color(0xffF3B431) ,text: 'Today Cases',))
                          ],
                        ),
                      ),
                    ),
                     Flexible(
                         flex: 1,
                         child: SizedBox(height: 20,)),
                     Flexible(
                       flex: 2,
                       child: Container(
                         height: 50,
                         width: 200,

                         decoration: BoxDecoration(
                           color: Colors.red,
                           borderRadius: BorderRadius.all(Radius.circular(10)),

                         ),
                         child: FlatButton(
                           child: Text('Explore',style: TextStyle(fontSize: 20,color: Colors.white),),
                           onPressed: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) =>LoadingScreen() ),
                             );
                           },
                         ),
                       ),
                     )
                  ],
                ),
              ),

          ],
        ),
        ),
      ),
    );

  }
}




