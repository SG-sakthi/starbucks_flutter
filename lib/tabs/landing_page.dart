import 'package:star/pages/buy_page.dart';
import 'package:star/pages/cart_page.dart';
import 'package:star/pages/home_page.dart';
import 'package:star/pages/items_page.dart';

final List<Map<String, dynamic>> pageDetails = [
  {
    'pageName': HomePage(),
    'title': 'Home',
  },
  {
    'pageName': CartPage(),
    'title': 'cart',
  },
  {
    'pageName': ItemPages(),
    'title': 'item',
  },
  {
    'pageName': Buypage(),
    'title': 'buy',

  },
];
