import 'package:flutter/material.dart';
import 'package:instagram/features/home/home_page.dart';

import 'common/constants/variable_constant.dart';
import 'data/datasources/local/cache/app_cache.dart';

void main() {
  runApp(const MyApp());
  AppCache.init();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      routes: {
        VariableConstant.ROUTE_HOME: (context) => HomePage()
      },
      initialRoute:  VariableConstant.ROUTE_HOME,
    );
  }
}