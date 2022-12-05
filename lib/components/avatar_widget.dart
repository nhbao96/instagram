import 'package:flutter/widgets.dart';

Widget AvatarWidget(String imagePath, String name, double width,double height)
{
  return Column(
    children: [
      Container(
        width: width,
        height: height,
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.fill
          ),
        ),
      ),
      Text(name, style: TextStyle(fontSize: 12, color: Color(262626)),)
    ],
  );
}