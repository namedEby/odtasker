import 'package:flutter/material.dart';

class ProfilePic extends StatefulWidget{
  double rad;
  ProfilePic({this.rad});
  @override
  State<StatefulWidget> createState() {
    
    return ProfilePicState();
  }

}

class ProfilePicState extends State<ProfilePic>{
  @override
  Widget build(BuildContext context) {
    
    return   Container(
      child: Card(
                      elevation: 11,
                      shape: CircleBorder(),
                                        child: CircleAvatar(
                        radius: widget.rad,
                        backgroundColor: Colors.white,
                      ),
                    ),
    );
  }
}