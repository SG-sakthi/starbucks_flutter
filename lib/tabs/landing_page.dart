import 'package:star/pages/cart_page.dart';
import 'package:star/pages/home_page.dart';
import 'package:star/pages/profile_page.dart';
import 'package:star/pages/support_page.dart';

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
    'pageName': Profile(),
    'title': 'profile',
  },
  {
    'pageName':SupportPage(),
    'title': 'support',

  },
];
