import 'package:flutter/material.dart';

class NewsCard extends StatefulWidget{
  String assetname;
  String heading;
  NewsCard ({this.assetname,this.heading});
  @override
  State<StatefulWidget> createState() {
    
    return NewsCardState();
  }

}

class NewsCardState extends State<NewsCard>{
  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: <Widget>[
        Container(
          child:Image(image: AssetImage(widget.assetname),)

        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget>[
              Text("Daily News",style:TextStyle(color:Colors.white)),
              SizedBox(height:5.0),
              Text(widget.heading,style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold),),
              SizedBox(height:5.0),
              Icon(Icons.favorite_border,color:Colors.white)
            ]
          ),
        )
      ],
    );
  }

}