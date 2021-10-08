import 'package:flutter/material.dart';
import 'package:odtasker/Screen_Size.dart';
import 'package:odtasker/passrecover.dart';
//import 'package:cupertino_icons';

class   WelcomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return WelcomePageState();
  }

}

class WelcomePageState extends State<WelcomePage>{
  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(builder:(context,constraints){
      return OrientationBuilder(builder: (context,orientation){
        SizeConfig().init(constraints, orientation);
        return Scaffold(
          body: SingleChildScrollView(
            child:Padding(
              padding: const EdgeInsets.only(top: 120,left: 30,right: 30,bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
                 
                   Text("WELCOME \nOd Tasker",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(54, 133, 105, 100)),
                      ),
                  
                  SizedBox(
                    height: 30,
                  ),
                  Text("Welcome to Od Tasker App,this is ON \n Demand Lifestyle service for your comfort",
                  style: TextStyle(
                    fontSize: 20
                  ),),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Log into continue this apps",style:TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(54, 133, 105, 100)
                  )),
                  SizedBox(
                    height: 60,
                  ),
                  Text("PHONE NUMBER OR EMAIL",
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
                   
                    hintText: "Your Phone Number Or Email"),
               // obscureText: _obscureText,
                
              ),
            ),
            SizedBox(
              height: 20,
            ),
             Row(
               mainAxisAlignment:MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 Text("PASSWORD",
                      style: TextStyle(color: Colors.grey),),
                 Text("Forgot Password",
                      style: TextStyle(color: Color.fromRGBO(54, 133, 105, 100)),),
                      
               ],
             ),
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
                   
                    hintText: "Your Password"),
               // obscureText: _obscureText,
                
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("OR LOG IN WITH",style:TextStyle(color: Colors.grey)),
            SizedBox(
              height: 20  ,
            ),
            Row(children:<Widget>[
              CircleAvatar(
                radius: 30,
                backgroundColor: Color.fromRGBO(216, 216, 220,100),
              //child:Icon(Icons.)
              ),
              SizedBox(width: 20,),
              CircleAvatar(
                radius: 30,
              backgroundColor: Color.fromRGBO(216, 216, 220,100),
              )
            ]),
            SizedBox(height: 80,),

            Container(
              width: 85*SizeConfig.widthMultiplier,
              height: 5.8*SizeConfig.heightMultiplier,
              child:RaisedButton(
                color:Color.fromRGBO(54, 133, 105, 100),
                onPressed:(){
                    Navigator.push(
              context, MaterialPageRoute(builder: (context) =>Passrecover()));
                },
                child: Text("LOG IN ",style: TextStyle(color: Colors.white,fontSize: 19),),
              )
            )
                ]
              ),
            )
          ),
        );
      });
    });
  }

}