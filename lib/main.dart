import 'package:flutter/material.dart';
import 'package:odtasker/Screen_Size.dart';
import './map.dart';


import 'package:odtasker/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:Language()
      
    );
  }
}

class Language extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LanguageState();
  }

}

class LanguageState extends State<Language>{
  String text = "English";
  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(builder:(context,constraints){
      return OrientationBuilder(builder: (context,orientation){
        SizeConfig().init(constraints,orientation);
        return MaterialApp(
         debugShowCheckedModeBanner: false,
         home: Scaffold(
           body:Stack(children: <Widget>[
             Container(
               color:Color.fromRGBO(54, 133, 105, 100),
               child: Center(
                 child:Container(
                   color: Colors.white,
                   child: FlutterLogo(
                     size: 120,
                   ),
                 )
               ),
              
             ),

             Positioned(
               top:68*SizeConfig.heightMultiplier,
               left:15*SizeConfig.widthMultiplier,
               right: 15*SizeConfig.widthMultiplier,

           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
                 children:<Widget>[
                   Text("Select Your Language",
                   style: TextStyle(fontSize:15,
                                    color: Colors.grey),),
                   SizedBox(height: 20,),
                   Container(
                     padding: EdgeInsets.all(10),
                     height: 50,
                     width: 500,
                     color: Color.fromRGBO(120, 153,170,80),
                     child:Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                       children:<Widget>[
                         Text(text),

                         Icon(Icons.arrow_drop_down)
                       ]
                     )
                   ),
                   SizedBox(
                     height: 50,
                   ),

                   Container(
                     width: 500,
                     height: 50,
                     child: RaisedButton(
                       color: Colors.white,
                          onPressed:(){
                             Navigator.push(
              context, MaterialPageRoute(builder: (context) =>WelcomePage()));
                          },
                         // elevation: 11,
                          child: Text("Accept",style:TextStyle(
                            fontSize: 20,
                            color: Colors.blueGrey
                          ),),
                          ),
                   )
                 ]
               ),
             )
           ],)
         ), 
        );
      });
    });
  }

}
