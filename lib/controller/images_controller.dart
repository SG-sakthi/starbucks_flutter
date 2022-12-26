import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ImagesController extends GetxController {
  var navBarColor = true.obs;
  add(){
    item.value++;
  }
  remove() {
    if(item.value<=0){
      return 0;
    }
    else
    {
      item.value--;
    }
  }
  var item=1.obs;
  List<String> pics = [
    "assets/carousel1.png",
    "assets/carousel2.png",
    "assets/carousel3.png",
    "assets/cafe1.png",
    "assets/cafe2.png",
    "assets/cafe3.png",
    "assets/cafe4.png",
  ];
var len  = 0;
  var fav = false.obs;

  List heading = ["Americano.Lattino.", "Cappacuino", "Espresso","Le mate wig","Carappe","Filter Kappi","Theneer"];
  List desc = [
    "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all element.",
    "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all element.",
    "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all element.",
    "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all element.",
    "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all element.",
    "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all element.",
    "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all element.",
  ];
  List<String>price=[
    "99.0",
    "100.0",
    "190.0",
    "112.0",
    "112.0",
    "112.0",
    "112.0",
  ];

}
