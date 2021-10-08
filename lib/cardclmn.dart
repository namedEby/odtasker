import 'package:flutter/material.dart';

class CardClmn extends StatefulWidget{
  String cardname;
  String imagename;
  CardClmn({this.cardname,this.imagename});
  @override
  State<StatefulWidget> createState() {
    
    return CardClmnState();
  }

}

class CardClmnState extends State<CardClmn>{
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Column(
      
        children:<Widget>[
          Image(image: AssetImage(widget.imagename,),height: 60,width: 60),
          SizedBox(height:10,),
          
          Text(widget.cardname)

        ]
      ),
    );
  }

}