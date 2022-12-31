import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:starbucks/pages/buy_page.dart';
import 'package:starbucks/pages/cart_page.dart';
import 'package:starbucks/pages/home_page.dart';
import 'package:get/get.dart';
import 'package:starbucks/pages/items_page.dart';
import 'package:starbucks/widgets/navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color(0xff007E3F),
      systemNavigationBarColor: Color(0xff007E3F),
      systemNavigationBarDividerColor:Color(0xff007E3F),

    ));
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home:NavBar(),
      routes: {
        "home": (context) => HomePage(),
        "itemPage": (context) => ItemPages(),
        "cofees": (context) => CartPage(),
        "buypage":(context) => Buypage(),
      },
    );
  }
}
