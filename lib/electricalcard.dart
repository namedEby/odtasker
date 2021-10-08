import 'package:flutter/material.dart';
import 'package:odtasker/Screen_Size.dart';
import 'package:odtasker/option.dart';

  

class ElectricalCard extends StatelessWidget{
  
  

  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(builder:(context,constraints){
      return OrientationBuilder(builder: (context,orientation){
        SizeConfig().init(constraints, orientation);
        return Card(
          elevation: 11,
          child:SingleChildScrollView(
            
                      child: Container(
              
              width: 400,
              
            
                                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        color:Colors.green,
                        height: 80,
                        padding: EdgeInsets.only(left:10,right:10),
                        child: Row(
                          children:<Widget>[
                            Icon(Icons.blur_circular,size: 40,),
                            SizedBox(width:40),

                            Text("Electrical",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold,color: Colors.white),)
                          ]
                        ),
                        
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: SingleChildScrollView(
                                                  child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children:<Widget>[
                             TextBetween(text:"SELECT THE TYPE"),
                              Option(name: "Repair",),
                              Option(name:"Replacement"),
                              Option(name:"Installation"),
                              TextBetween(text: "SELECT THE DETAIL OF TYPE",),
                              Option(name:"Switches/Power Sockets"),
                              Option(name:"Fittings"),
                              Option(name: "Power Failure",),
                              TextBetween(text: "Select One: ",),
                              Option(name:"Switches"),
                              Option(name:"Power Socket"),
                              SizedBox(height:20),
                              Container(
                                width: 400,
                                child:RaisedButton(
                                  color:Colors.green,
                                  child: Text("Next",style:TextStyle(color: Colors.white,fontSize: 20)),
                                  onPressed: (){},
                                )
                              ),
                              
                              
                             

                              
                            ]
                          ),
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

class ElectricalCard2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    return LayoutBuilder(builder:(context,constraints){
      return OrientationBuilder(builder: (context,orientation){
        //SizeConfig().init(constraints, orientation);
        return Container(
         // height: 1+0,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children:<Widget>[
                  Icon(Icons.blur_circular),
                  Container(child: VerticalDivider(width: 15,color: Colors.grey,),height: 40,),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget>[
                        Text("Electrical"),
                        SizedBox(height:10),
                        Text("Repair - Power -Switches"),
                      
                      ]
                    ),
                  )

                ]
              ),
            ),
          ),
        );
      });
    });
  }

}

