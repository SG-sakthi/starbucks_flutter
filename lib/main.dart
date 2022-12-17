import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:star/pages/Cofees.dart';
import 'package:star/pages/Homepage.dart';
import 'package:star/pages/Itempage.dart';
import 'package:get/get.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,

      ),
      routes: {
        "/" : (context) => Hompage(),
        "itemPage" : (context) => ItemPage(),
        "cofees" : (context) => Cofees(),

      },
    );
  }
}
