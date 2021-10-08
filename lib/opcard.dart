import 'package:flutter/material.dart';
import 'package:odtasker/Screen_Size.dart';

class OpCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(builder:(context,constraints){
      return OrientationBuilder(builder: (context,orientation){
        SizeConfig().init(constraints, orientation);
        return Card(
          elevation: 7,
          child:Container(
            height: 170,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Balance",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      
                      Text("462.00")
                    ],
                  ),
                  Divider(thickness: 2,),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                 child:Row(
                      children:<Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('pay',style: TextStyle(fontSize: 18),),
                        ),
                        Container(child: VerticalDivider(width: 15,color: Colors.grey,),height: 40,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('request',style: TextStyle(fontSize: 18),),
                        ),
                          Container(child: VerticalDivider(width: 15,color: Colors.grey,),height: 40,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Top Up',style: TextStyle(fontSize: 18),),
                        ),
                          Container(child: VerticalDivider(width: 15,color: Colors.grey,),height: 40,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Rewards',style: TextStyle(fontSize: 18),),
                        ),
                        
                      ]
                    ),
                  )
                ],
              ),
            ),
          )
        );
      });
    });
  }

}