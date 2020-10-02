import 'package:flutter/material.dart';
import 'nepal.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({this.data});
  final data;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

var covidData;
  @override
  void initState() {
    super.initState();

      covidData = widget.data;


  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDCE0EB),

      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left:10,right: 10),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(

                          child: Padding(
                            padding: const EdgeInsets.only(top:15.0,left: 30),
                            child: Align(alignment: Alignment.bottomLeft,child: Text('All Country',style: TextStyle(color: Colors.black,fontFamily: 'Roboto',fontSize: 30,),textAlign: TextAlign.left),
                            ),
                          ),),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 60,
                            width: 60,
                            child: RawMaterialButton(
                              highlightElevation: 10,
                              splashColor: Colors.black,
                              onPressed: () { Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NepalScreen(data: covidData,index: 138,)),
                              );},
                              child: new Image.network('https://raw.githubusercontent.com/NovelCOVID/API/master/assets/flags/np.png',),
                              shape: new CircleBorder(),
                              elevation: 2.0,
                              fillColor: Color(0xffF4F5F7),
                              padding: const EdgeInsets.all(15.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),),
              Expanded(
                flex: 19,
                child: ListView.builder(
                    itemCount:covidData.length,
                  itemBuilder: (context,index){
                      return Column(
                        children: <Widget>[
                          Card(
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),),
                            color: Colors.white,
                           borderOnForeground: true,
                           child: Padding(
                             padding: EdgeInsets.all(10),
                             child: GestureDetector(
                               onTap: (){Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => NepalScreen(data: covidData,index: index,)),
                               );},
                               child: ListTile(
                                 title: Container(
                                   child: Row(
                                     children: <Widget>[
                                       SizedBox(width: 10,),
                                       Expanded(child: Text( covidData[index]["country"],style: TextStyle(color: Colors.black,fontFamily: 'Regular',fontWeight: FontWeight.w500),)),
                                       Expanded(child: Text( covidData[index]["cases"].toString(),textAlign: TextAlign.end,style: TextStyle(color: Colors.black,
                                       fontFamily: 'Regular',fontWeight: FontWeight.w500))),
                                     ],
                                   ),
                                 ),

                                 leading: Container(
                                     height: 50,
                                     width: 50,

                                     child: ClipRRect(
                                       borderRadius: BorderRadius.all(Radius.circular(20)),
                                         child: Image.network(covidData[index]["countryInfo"]["flag"],height: 50,width: 50,),

                                     ),
                                 )
                               ),
                             ),
                           ) ,
                          ),
//                Divider(height: 10,color: Color(0xff2C3335),indent: 20,endIndent: 20,),
                        ],
                      );

                  },
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}

