import 'package:get/get.dart';
import 'package:meta/meta.dart';

class NavBar extends GetxController {
  var navBarColor = true.obs;

  List<String> pics = [
    "assets/carousel1.png",
    "assets/carousel2.png",
    "assets/carousel3.png"
  ];

  List heading = [" Americano. Caffè Lattino.", "Cappacuino", "Espresso"];
  List desc = [
    "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all element.",
    "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all element.",
    "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all element."
  ];
}
