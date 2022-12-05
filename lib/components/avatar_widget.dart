import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget AvatarWidget(String imagePath, String name, double width,double height)
{
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: width,
        height: height,
        margin: EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage( image: AssetImage("assets/images/oval-story-icon.png"),
          ),
        ),
        child:Container(
          width: width-6,
          height: width-6,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.fill
            ),
          ),
        ),
      ),
      Text(name, style: TextStyle(fontSize: 12, color: Colors.black),)
    ],
  );
}