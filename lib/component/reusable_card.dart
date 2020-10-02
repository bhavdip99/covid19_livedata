import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.color1,this.color2,this.icon,this.iconcolor,this.color,this.number,this.text });
  final Color color1;
  final Color  color2;
  final Color iconcolor;
  final IconData icon;
  final Color color;
  final int number;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
//

        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [color1,color2
            ]
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Icon(icon,color: iconcolor,size: 50,),
            Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(
                      child: Text(number.toString(),style: TextStyle(
                        fontSize: 25,color: color,
                      ),),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(child: Text(text, style: TextStyle(color: Colors.black54,fontSize: 18),))

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
