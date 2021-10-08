import 'package:flutter/material.dart';
import 'package:odtasker/NewsCard.dart';
import 'package:odtasker/odcard.dart';
import 'package:odtasker/opcard.dart';
import 'package:odtasker/profilepic.dart';
import 'package:odtasker/slctcard.dart';
import './Screen_Size.dart';
import './bg.dart';

import './slctcard.dart';
import './map.dart';

enum WidgetMarker {life,job,transport}

class FirstScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return FirstScreenState();
  }

}

class FirstScreenState extends State<FirstScreen>{
  WidgetMarker selectedwidget=WidgetMarker.life;
 
   Widget build(BuildContext context) {
    
    return LayoutBuilder(builder: (context,constraints){
      return OrientationBuilder(builder: (context,orientation){
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          home: Scaffold(
            body:Stack(
              children:<Widget>[
                Background(),
               Container(
                 margin: EdgeInsets.only(top:200,left:20,right: 20),
                 child: SingleChildScrollView(
                     child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: <Widget>[
                       OpCard(),
                       Container(
                         margin: EdgeInsets.only(top:20,left:20),
                         child: Text("What we can help you?",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                         ),
                         Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Row(
                             children: <Widget>[
                               RaisedButton(onPressed:(){
                                 setState(() {
                                 selectedwidget=WidgetMarker.life;   
                                 });
                                
                                
                               },child:Text("ODLIFE")),
                               SizedBox(width:20),
                               RaisedButton(
                                 highlightColor: Colors.lightBlue,
                                 disabledColor: Colors.grey,
                                 onPressed:(){
                                 setState(() {
                                 selectedwidget =WidgetMarker.job;
  
                                 });
                                                                },
                                  child:Text("ODJOB")),
                               SizedBox(width:20), 
                               RaisedButton(onPressed:(){
                                 setState(() {
                                 selectedwidget=WidgetMarker.transport;  
                                 });
                                 
                               },child:Text("ODTRANSPORT")),
                             ],
                           ),
                         ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                                              child: Container(
                          margin: EdgeInsets.only(top:10,),
                          child: getCustomContainer()
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top:10),
                      
                      height: 250,
                      child: ListView(
                          scrollDirection:Axis.horizontal,
                          children:<Widget>[
                            NewsCard(assetname:"images/business.jpg",heading:"The Next Taxi" ,),
                            SizedBox(width:10),
                            NewsCard(assetname:"images/traffic.jpg",heading: "The Business Key",),
                          ]
                        ),
                    ),
                     
                     ],
                   ),
                 )
                 ),
                  
                 Positioned(
                   
                   child: Padding(
                     padding: const EdgeInsets.only(top: 60,left: 40,right: 40 ),
                     child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Text("Good Evening\nUmmar",style: TextStyle(fontSize:35  ,fontWeight: FontWeight.bold,color: Colors.white),),
                       ProfilePic(rad:30)
                      
                     ],
                 ),
                   ))
              ]
            ),
             bottomNavigationBar: BottomNavigationBar(
              items:[
               
                 BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance_wallet,color: Colors.grey,),
                    title: Text('',style: TextStyle(color: Colors.grey))),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.perm_media,color: Colors.grey,),
                      title: Text('')
                    ),
                 BottomNavigationBarItem(
                   icon: Icon(Icons.mail_outline,color: Colors.grey,),
                   title: Text('',style: TextStyle(color: Colors.grey),)
                 ),
                 BottomNavigationBarItem(
                   icon: Icon(Icons.perm_identity,color: Colors.grey,),
                   title:Text("data")
                 ),
                  BottomNavigationBarItem(
                  icon:Icon(Icons.gps_fixed,color: Colors.grey,),
                  title: Text("",style: TextStyle(color: Colors.grey),)
                  ),
              ] ),  
          ),
          
        );
      });
    });
    
}
Widget getCustomContainer (){
  switch(selectedwidget){
    case WidgetMarker.life:
      return life();
    case WidgetMarker.job:
      return job();
    case WidgetMarker.transport:
      return transport();

  }

  return null;
}

Widget life(){
  return Container(
    height: 100,
    child: Row(
      children:<Widget>[
        GestureDetector(
          onTap: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (context) =>Map()));
          },
          child: OdCard(odcardname:"QUICK FIX")
          ),
        OdCard(odcardname:"MARKET PLACE"),
        OdCard(odcardname:"BIDDING")
      ]
    ),
  );
}

Widget job(){
  return Container(
    height: 100,
    child: Row(
      children:<Widget>[
        OdCard(odcardname:"CHASIER"),
        OdCard(odcardname:"CHEF"),
        OdCard(odcardname:"Promoter")
      ]
    ),
  );
}

Widget transport(){
  return Container(
    height: 100,
    child: Row(
      children:<Widget>[
        OdCard(odcardname: "PASSENGER",),
        OdCard(odcardname:"COMMERCIAL")
      ]
    ),
  );
}
}

