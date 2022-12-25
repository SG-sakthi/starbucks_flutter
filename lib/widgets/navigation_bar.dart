import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../pages/cart_page.dart';

class NavBar extends StatelessWidget {
  NavBar({Key? key}) : super(key: key);
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    return CurvedNavigationBar(
      color: const Color(0xff007E3F),
      backgroundColor: const Color(0xffFFFFFF),
      buttonBackgroundColor: const Color(0xff007E3F),
      key: _bottomNavigationKey,
      index: 2,
      onTap: (index) {
        if (index == 1)
        [
        Get.to(CartPage())
        ];
      },
      items: const [
        Icon(
          Iconsax.user,
          color: Colors.white,
        ),
        Icon(
          Iconsax.coffee,
          color: Colors.white,
        ),
        Icon(
          Iconsax.home_25,
          color: Colors.white,
        ),
        Icon(
          Iconsax.call,
          color: Colors.white,
        ),
        Icon(
          Iconsax.shopping_cart,
          color: Colors.white,
        )
      ],
    );
  }
}
