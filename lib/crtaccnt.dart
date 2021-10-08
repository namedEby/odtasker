import 'package:flutter/material.dart';
import 'package:odtasker/Screen_Size.dart';
import 'package:odtasker/fstScrn.dart';

//import 'package:cupertino_icons';

class   AccntcrtPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return AccntcrtState();
  }

}

class AccntcrtState extends State<AccntcrtPage>{
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
                 Text("CREATE\nACCOUNT",style:TextStyle(color: Color.fromRGBO(54, 133, 105, 100),fontWeight: FontWeight.bold,fontSize: 35)),
                  SizedBox(height: 20,),
                 Text("Let's get On Demand Lifestyle Service for \nyour comfort with OD Tasker App"),
                 SizedBox(height: 20,),
                 Row(
                    children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("First Name",
                            style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 20,),
                  Container(
                        color:Color.fromRGBO(216, 216, 220,100),
              width: 40 * SizeConfig.widthMultiplier,
              height: 5.8 * SizeConfig.heightMultiplier,
              child: TextField(
                textAlign: TextAlign.start,
                decoration: new InputDecoration(
                  
                 contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                   
                        hintText: "Your First Name"),
               // obscureText: _obscureText,
                
              ),
            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Last Name",
                            style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 20,),
                  Container(
                        color:Color.fromRGBO(216, 216, 220,100),
              width: 40 * SizeConfig.widthMultiplier,
              height: 5.8 * SizeConfig.heightMultiplier,
              child: TextField(
                textAlign: TextAlign.start,
                decoration: new InputDecoration(
                  
                 contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                   
                        hintText: "Your Last Name "),
               // obscureText: _obscureText,
                
              ),
            ),
                          ],
                        ),
                    
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("COUNTRY CODE",
                            style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 20,),
                  Container(
                        color:Color.fromRGBO(216, 216, 220,100),
              width: 40 * SizeConfig.widthMultiplier,
              height: 5.8 * SizeConfig.heightMultiplier,
              child: TextField(
                textAlign: TextAlign.start,
                decoration: new InputDecoration(
                  
                 contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                   
                        hintText: "+1233",
                        suffixIcon: Icon(Icons.arrow_drop_down)),
               // obscureText: _obscureText,
                
              ),
            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("YOUR PHONENUMBER",
                            style: TextStyle(color: Colors.grey),),
                              SizedBox(height: 20,),
                  Container(
                        color:Color.fromRGBO(216, 216, 220,100),
              width: 40 * SizeConfig.widthMultiplier,
              height: 5.8 * SizeConfig.heightMultiplier,
              child: TextField(
                keyboardType: TextInputType.phone,
                textAlign: TextAlign.start,
                decoration: new InputDecoration(
                  
                  
                 contentPadding: EdgeInsets.all(20),
                        border: InputBorder.none,
                   
                        hintText: "YOUR PHONE NUMBER"),
               // obscureText: _obscureText,
                
              ),
            ),
                          ],
                        ),
                    
                    ],
                  ), 
                  SizedBox(height: 20,),
                   Text("EMAIL",
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
                  
                 contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                   
                        hintText: "Your Email Address"),
               // obscureText: _obscureText,
                
              ),
            ),
            SizedBox(height: 20,), 
            Text("PASSWORD",
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
                  
                 contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                   
                        hintText: "YOUR PASSWORD"),
               // obscureText: _obscureText,
                
              ),
            ),
            SizedBox(height: 20,) ,
            Text("CONFIRM PASSWORD",
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
                  
                 contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none,
                   
                        hintText: "Retype Your Password"),
               // obscureText: _obscureText,
                
              ),
            ), 
            SizedBox(height: 20,),    
            Text("Have an Account ? Sign up Now",style:TextStyle(color: Color.fromRGBO(54, 133, 105, 100)))  ,
            SizedBox(height: 40,),
             Container(
              width: 85*SizeConfig.widthMultiplier,
              height: 5.8*SizeConfig.heightMultiplier,
              child:RaisedButton(
                color:Color.fromRGBO(54, 133, 105, 100),
                onPressed:(){
                    Navigator.push(
              context, MaterialPageRoute(builder: (context) =>FirstScreen()));
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