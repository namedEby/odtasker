import 'package:flutter/material.dart';
import 'package:odtasker/Screen_Size.dart';
import 'package:odtasker/cardclmn.dart';

class QuickFixCard extends StatelessWidget{
  

  @override
  Widget build(BuildContext context) {
    
    return LayoutBuilder(builder:(context,constraints){
      return OrientationBuilder(builder: (context,orientation){
        SizeConfig().init(constraints, orientation);
        return Card(
          elevation: 7,
          child:Container(
            height: 450,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("How can we help you today ?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                  Divider(thickness: 2,),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                 child:SingleChildScrollView(
                   scrollDirection: Axis.horizontal,

                                    child: Row(
                        children:<Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              child:CardClmn(cardname:'Electrical',imagename: 'images/bulb.png',),
                              onTap: (){
                                
                              },
                              ),
                          ),
                          Container(child: VerticalDivider(width: 15,color: Colors.grey,),height: 40,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CardClmn(cardname:'Plumbing',imagename:'images/plumbing.png',)
                          ),
                            Container(child: VerticalDivider(width: 15,color: Colors.grey,),height: 40,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CardClmn(cardname:'Painting',imagename:'images/painting.png')
                          ),
                            Container(child: VerticalDivider(width: 15,color: Colors.grey,),height: 40,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:CardClmn(cardname:'Cleaning',imagename:'images/clwaning.png')
                          ),
                          
                        ]
                      ),
                 ),
                  ),
                  Container(
                    height: 65,
                    padding: EdgeInsets.all(10),
                    
                   decoration: BoxDecoration(
                     color: Color.fromRGBO(211, 211, 211, 200),
                     border:Border.all(
                       width: .3,
                       color: Color.fromRGBO(211, 211, 211,100)
                     )
                   ),
                    child:TextFormField(
                      decoration: const InputDecoration(
                        icon:Icon(Icons.calendar_today),
                        border: InputBorder.none,
                        labelText: 'Date & Time'
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 65,
                    decoration:BoxDecoration(
                      color: Color.fromRGBO(211,211, 211,200),
                      border:Border.all(
                         color: Color.fromRGBO(211, 211, 211,100),
                        width:.3
                      )
                    ),
                    child:TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon:Icon(Icons.add_location),
                        labelText: 'your location'
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                   Container (
              width: 440,
              height: 50,
              child:RaisedButton(
                color:Colors.green,
                onPressed:(){
                    Navigator.push(
              context, MaterialPageRoute(builder: (context) =>null));
                },
                child: Text("Set Task ",style: TextStyle(color: Colors.white,fontSize: 19),),
              ))
                  
                  
                ],
              ),
            ),
          )
        );
      });
    });
  }

}