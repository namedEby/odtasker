import 'package:flutter/material.dart';
import 'package:odtasker/Screen_Size.dart';
import 'package:odtasker/accntcrt.dart';

import 'package:pin_entry_text_field/pin_entry_text_field.dart';

import './bg.dart';
import './profilepic.dart';

class Otp extends StatelessWidget{
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
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:<Widget>[
                                Column(children: <Widget>[
                                  Text("Your Profile has been verified ",
                                  style: TextStyle(
                                    fontSize: 20
                                  ),),
                                Text("Please Enter verify code on below ",
                                  style: TextStyle(
                                    fontSize: 20
                                  ),),
                                  Center(
          
            child: PinEntryTextField(
                  onSubmit: (String pin){
                    showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          title: Text("Pin"),
                          content: Text('Pin entered is $pin'),
                        );
                      }
                    ); //end showDialog()

                  }, // end onSubmit
                ),
          ),
          SizedBox(height: 70,),
          Center(child: Text("Resend the code to your phone ",style: TextStyle(color: Color.fromRGBO(54, 133, 105, 100)),))
                                  
                                    

                                ],)
                              ]
                            ),
                          ),
                         
                  
             SizedBox(height: 15.6*SizeConfig.heightMultiplier),

            Container(
              width: 85*SizeConfig.widthMultiplier,
              height: 5.8*SizeConfig.heightMultiplier,
              child:RaisedButton(
                color:Color.fromRGBO(54, 133, 105, 100),
                onPressed:(){
                    Navigator.push(
              context, MaterialPageRoute(builder: (context) =>AccntCrt()));
                },
                child: Text("Enter ",style: TextStyle(color: Colors.white,fontSize: 19),),
              ))
                      ],),
                    )
                  ),
                ),
                Positioned(
                  top:17.8*SizeConfig.heightMultiplier,
                  left:38*SizeConfig.widthMultiplier,
                  child: ProfilePic(rad: 50,),
                 ),
              ]
            )
          ),
        );
      });
    });
  }

}