import 'package:flutter/material.dart';
import 'package:odtasker/NewsCard.dart';
import 'package:odtasker/opcard.dart';
import 'package:odtasker/profilepic.dart';
import 'package:odtasker/slctcard.dart';
import './Screen_Size.dart';
import './bg.dart';

import './slctcard.dart';
class FirstScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   
    return FirstScreenState();
  }

}

class FirstScreenState extends State<FirstScreen>{
 
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
                             RaisedButton(onPressed:(){},child:Text("ODLife")),
                             SizedBox(width:20),
                             RaisedButton(onPressed:(){},child:Text("ODLife")),
                             SizedBox(width:20),
                             RaisedButton(onPressed:(){},child:Text("ODLife")),
                           ],
                         ),
                       ),
                    Container(
                      margin: EdgeInsets.only(top:10,),
                      child: Row(
                        children:<Widget>[
                         SlctCard(cardname: "Quick Fix",),
                         SlctCard(cardname: "MarketPlace",),
                         SlctCard(cardname: "Bidding",)
                        ]
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top:10),
                    
                    height: 180,
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
}