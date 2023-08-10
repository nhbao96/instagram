import 'package:flutter/material.dart';
import 'package:insta/utils/colors.dart';

import '../utils/dimesions.dart';

class ResponsiveLayout extends StatefulWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveLayout({Key? key, required this.mobileScreenLayout, required this.webScreenLayout}) : super(key: key);

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraint){
      if(constraint.maxWidth > webScreenWidth){
        return widget.webScreenLayout;
      }
      return widget.mobileScreenLayout;
    });
  }
}
