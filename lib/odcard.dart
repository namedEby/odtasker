import 'package:flutter/material.dart';

class OdCard extends StatelessWidget{
  String odcardname;
  
  OdCard({this.odcardname,});
  @override
  Widget build(BuildContext context) {
    
    return Container(
      width: 130,
      child:Card(
        child:Column(children: <Widget>[
          Center(
            child:Image(image:AssetImage(''))
          ),
          Text(odcardname),
        ],)
      ),
    );
  }

}