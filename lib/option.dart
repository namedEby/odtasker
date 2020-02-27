import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';

class Option extends StatefulWidget{
  String name;
  Option({this.name});
  @override
  State<StatefulWidget> createState() {
    
    return OptionState();
  }

}

class OptionState extends State<Option>{
  bool check =false;
  @override
  Widget build(BuildContext context) {
   
    return  Column(
      children: <Widget>[
        SizedBox(height:20),
        Container(
                              color: Color.fromRGBO(211,211, 211,200),
                              child:Row(
                                children: <Widget>[
                                  
                                  CircularCheckBox(
                                    value:check,
                                    materialTapTargetSize: MaterialTapTargetSize.padded, 
                                    onChanged:(bool x){
                                    check =!check;
                                  }),
                                  Text(widget.name),
                                  
                                ],
                              )
                            ),
                            
      ],
    );
  }

}

class TextBetween extends StatelessWidget{
  String text;
  TextBetween({this.text});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children:<Widget>[
        SizedBox(height:20),
        Text(text,style: TextStyle(fontSize:15,color: Colors.grey),),
      ]
    );
  }

}