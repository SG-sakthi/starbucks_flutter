import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:star/pages/buy_page.dart';
import 'package:star/pages/cart_page.dart';
import 'package:star/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:star/pages/items_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor:Colors.transparent
    ));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => HomePage(),
        "itemPage": (context) => ItemPages(),
        "cofees": (context) => CartPage(),
        "buypage":(context) => Buypage(),
      },
    );
  }
}
