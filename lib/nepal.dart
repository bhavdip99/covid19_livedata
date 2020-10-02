

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:covid19/component/reusable_card.dart';
class NepalScreen extends StatefulWidget {
  NepalScreen({this.data,this.index});
  final data;
  final int index;
  @override
  _NepalScreenState createState() => _NepalScreenState();
}

class _NepalScreenState extends State<NepalScreen> {
  var covidData;
  int index;
  @override

  void initState() {
    super.initState();
    covidData = widget.data;
    index= widget.index;
  }


  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(

        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffDADEEA),

          ),
          child: Column(
            children: <Widget>[
              Expanded(

                child: Padding(
                  padding: const EdgeInsets.only(top:30.0,),
                  child: Column(
                    children: <Widget>[
                      Container(
                          width: 80,height: 80,
                          child: Image.network(covidData[index]["countryInfo"]["flag"])),
                      SizedBox(height: 20,),
                      Text( covidData[index]["country"] + ' Data',style: TextStyle(fontSize: 30,color: Colors.black),)
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
                            Expanded(child: new ReusableCard(color1: Color(0xff7B74F9),color2:  Color(0xffDADEEA) ,icon: Entypo.line_graph,iconcolor: Color(0xff7844EE),number: covidData[index]["cases"],color:Color(0xff7844EE) ,text: 'Infected',),),
                            SizedBox(width: 20,),
                            Expanded(child: new ReusableCard(color1: Color(0xffF6A0C5),color2: Color(0xffDADEEA),icon: Entypo.bug,iconcolor: Colors.red,color:Colors.red,number: covidData[index]["deaths"] ,text: 'Death',),)
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 1,
                        child: SizedBox(height: 20,)),
                    Flexible(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(left:20.0,right: 20),
                        child: Row(
                          children: <Widget>[
                            Expanded(child: new ReusableCard(color1: Color(0xffD5EEE1),color2: Color(0xffDADEEA),icon: Entypo.heart,iconcolor: Colors.green,number: covidData[index]["recovered"],color:Colors.green ,text: 'Recovered',)),
                            SizedBox(width: 20,),
                            Expanded(child: new ReusableCard(color1: Color(0xffF9F1DE),color2: Color(0xffDADEEA),icon: Entypo.users,iconcolor: Color(0xffF3B431),number:covidData[index]["todayCases"],color:Color(0xffF3B431) ,text: 'Today Cases',))
                          ],
                        ),
                      ),
                    ),
                    Flexible (
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
                          child: Text('Back',style: TextStyle(fontSize: 20,color: Colors.white),),
                          onPressed: (){
                       Navigator.pop(context);
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




