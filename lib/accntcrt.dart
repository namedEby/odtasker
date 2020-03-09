import 'package:flutter/material.dart';
import 'package:odtasker/Screen_Size.dart';
import 'package:odtasker/crtaccnt.dart';


import './bg.dart';
import './crtaccnt.dart';
import './profilepic.dart';

class AccntCrt extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(builder: (context,constraints){
      return OrientationBuilder(builder: (context,orientation){
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          home: Scaffold(
            body:Stack(
              children:<Widget>[
                Background(),
                Positioned(
                  top: 70,
                  left: 30,
                  child:CircleAvatar(
                  backgroundColor: Colors.white,
                  child:Icon(Icons.arrow_back_ios)
                )),
                Container(
                  margin: EdgeInsets.only(top: 200,left: 20,right: 20,bottom: 20),
                  child: Card(
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                                              child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 70),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:<Widget>[
                                  Column(children: <Widget>[
                                    Text("Ummar Hamza",
                                    style: TextStyle(
                                      fontSize: 20
                                    ),),
                                  
                                    
                                      

                                  ],)
                                ]
                              ),
                            ),
                            SizedBox(
                        height: 60,
                  ),
                  Row(
                    children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("First Name",
                            style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 10,),
                  Container(
                        color:Color.fromRGBO(216, 216, 220,100),
              width: 40 * SizeConfig.widthMultiplier,
              height: 5.8 * SizeConfig.heightMultiplier,
              child: TextField(
                textAlign: TextAlign.start,
                decoration: new InputDecoration(
                  
                 contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                   
                        hintText: "Ummar"),
               // obscureText: _obscureText,
                
              ),
            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Last Name",
                            style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 10,),
                  Container(
                        color:Color.fromRGBO(216, 216, 220,100),
              width: 40 * SizeConfig.widthMultiplier,
              height: 5.8 * SizeConfig.heightMultiplier,
              child: TextField(
                textAlign: TextAlign.start,
                decoration: new InputDecoration(
                  
                 contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                   
                        hintText: "Hamza"),
               // obscureText: _obscureText,
                
              ),
            ),
                          ],
                        ),
                    
                    ],
                  ),
                  
            SizedBox(
                        height: 30,
                  ),
                  Text("Phone  Number",
                  style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 20,),
                  Container(
                        color:Color.fromRGBO(216, 216, 220,100),
              width: 85 * SizeConfig.widthMultiplier,
              height: 5.8 * SizeConfig.heightMultiplier,
              child: TextField(
                keyboardType: TextInputType.phone,
                textAlign: TextAlign.start,
                decoration: new InputDecoration(
                  
                 contentPadding: EdgeInsets.all(20),
                        border: InputBorder.none,
                   
                        hintText: ""),
               // obscureText: _obscureText,
                
              ),
            ),
            SizedBox(
                        height: 30,
                  ),
                  Text("Email",
                  style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 20,),
                  Container(
                        color:Color.fromRGBO(216, 216, 220,100),
              width: 85 * SizeConfig.widthMultiplier,
              height: 5.8 * SizeConfig.heightMultiplier,
              child: TextField(
                textAlign: TextAlign.start,
                decoration: new InputDecoration(
                  
                 contentPadding: EdgeInsets.all(20),
                        border: InputBorder.none,
                   
                        hintText: "XXXX@gmail.com"),
               // obscureText: _obscureText,
                
              ),
            ),
              SizedBox(
                        height: 30,
                  ),
             Row(
                    children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Country",
                            style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 10,),
                  Container(
                        color:Color.fromRGBO(216, 216, 220,100),
              width: 40 * SizeConfig.widthMultiplier,
              height: 5.8 * SizeConfig.heightMultiplier,
              child: TextField(
                textAlign: TextAlign.start,
                decoration: new InputDecoration(
                  
                 contentPadding: EdgeInsets.all(20),
                        border: InputBorder.none,
                   
                        hintText: ""),
               // obscureText: _obscureText,
                
              ),
            ),
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("State",
                            style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 10,),
                  Container(
                        color:Color.fromRGBO(216, 216, 220,100),
              width: 40 * SizeConfig.widthMultiplier,
              height: 5.8 * SizeConfig.heightMultiplier,
              child: TextField(
                textAlign: TextAlign.start,
                decoration: new InputDecoration(
                  
                 contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                   
                        hintText: ""),
               // obscureText: _obscureText,
                
              ),
            ),
                          ],
                        ),
                    
                    ],
                  ),
                  
             SizedBox(height: 100,),

            Container(
              width: 85*SizeConfig.widthMultiplier,
              height: 5.8*SizeConfig.heightMultiplier,
              child:RaisedButton(
                color:Color.fromRGBO(54, 133, 105, 100),
                onPressed:(){
                    Navigator.push(
              context, MaterialPageRoute(builder: (context) =>AccntcrtPage()));
                },
                child: Text("Enter ",style: TextStyle(color: Colors.white,fontSize: 19),),
              ))
                        ],),
                      ),
                    )
                  ),
                ),
               Positioned(
                  top:17.8*SizeConfig.heightMultiplier,
                  left:38*SizeConfig.widthMultiplier,
                  child: ProfilePic(rad: 50),
                 ),
              ]
            ),
           
          ),
        );
      });
    });
  }

}