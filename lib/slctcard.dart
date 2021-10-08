import 'package:flutter/material.dart';

class SlctCard extends StatelessWidget{
  String cardname;
  SlctCard({this.cardname});
  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 130,
      width: 125,
      
      child:Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children:<Widget>[
              
              Center(
                child:Text(cardname,style: TextStyle(fontSize: 18),)
              )
            ]
          ),
        ),
      )
    );
  }

}