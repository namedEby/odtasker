import 'package:flutter/material.dart';
import 'package:odtasker/Screen_Size.dart';
import 'package:odtasker/maincard.dart';
import './electricalcard.dart';

class Map extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return MapState();
  }
  
}

class MapState extends State<Map>{
  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(builder:(context,constraints){
      return OrientationBuilder(builder: (context,orientation){
        SizeConfig().init(constraints, orientation);
        return Scaffold(
          body:Stack(
            children:<Widget>[
              Container(
                height: double.infinity,
                child:Image(image: AssetImage("images/map.jpg",),fit: BoxFit.fitHeight,) ,
                ),
                Positioned(
                  top:600,
                  left: 10,
                  right: 10,
                                  child: Container(
                    child: ElectricalCard2()),
                )
            ]
          ) 
          
        );
      });
    });
  }

}