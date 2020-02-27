import 'package:flutter/material.dart';
import 'package:odtasker/Screen_Size.dart';
import 'package:odtasker/otp.dart';

import './bg.dart';
import './profilepic.dart';

class ChangePass extends StatelessWidget{
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
                              padding: const EdgeInsets.only(top: 100),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:<Widget>[
                                  Column(children: <Widget>[
                                    Text("CHANGE PASSWORD",
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
                  Text("New Password",
                  style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 20,),
                  Container(
                        color:Color.fromRGBO(216, 216, 220,100),
              width: 85 * SizeConfig.widthMultiplier,
              height: 6.8 * SizeConfig.heightMultiplier,
              child: TextField(
                textAlign: TextAlign.start,
                decoration: new InputDecoration(
                  
                 contentPadding: EdgeInsets.all(20),
                        border: InputBorder.none,
                   
                        hintText: "Your New Password"),
               // obscureText: _obscureText,
                
              ),
            ),
            SizedBox(
                        height: 30,
                  ),
                  Text("Confirm Password",
                  style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 20,),
                  Container(
                        color:Color.fromRGBO(216, 216, 220,100),
              width: 85 * SizeConfig.widthMultiplier,
              height: 6.8 * SizeConfig.heightMultiplier,
              child: TextField(
                textAlign: TextAlign.start,
                decoration: new InputDecoration(
                  
                 contentPadding: EdgeInsets.all(20),
                        border: InputBorder.none,
                   
                        hintText: "Retype your password"),
               // obscureText: _obscureText,
                
              ),
            ),
             SizedBox(height: 10.4*SizeConfig.heightMultiplier,),

            Container(
              width: 85*SizeConfig.widthMultiplier,
              height: 5.8*SizeConfig.heightMultiplier,
              child:RaisedButton(
                color:Colors.green,
                onPressed:(){
                    Navigator.push(
              context, MaterialPageRoute(builder: (context) =>Otp()));
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
            )
          ),
        );
      });
    });
  }

}