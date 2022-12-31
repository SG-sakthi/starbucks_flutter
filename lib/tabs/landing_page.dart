import 'package:starbucks/pages/cart_page.dart';
import 'package:starbucks/pages/home_page.dart';
import 'package:starbucks/pages/profile_page.dart';
import 'package:starbucks/pages/support_page.dart';

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
