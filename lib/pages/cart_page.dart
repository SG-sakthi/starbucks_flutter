import 'package:flutter/material.dart';
import 'package:star/pages/home_page.dart';
import 'package:star/widgets/global_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:star/widgets/card_widget.dart';

GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();


class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

            backgroundColor: Colors.white,
            body: Column(
              children: [
                CoffeesAppBar(),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 35,
                  margin: const EdgeInsets.only(top: 0),
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Categories",
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 30,
                      margin:
                          const EdgeInsets.symmetric(horizontal: 10, vertical:10),
                      padding:
                          const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xff007E3F),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Top",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white))
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                      padding:
                          const EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                      decoration: BoxDecoration(
                        color: const Color(0xff007E3F),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Featured",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white))
                        ],
                      ),
                    ),
                    Container(
                      height: 30,
                      margin:
                          const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      padding:
                          const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                      decoration: BoxDecoration(
                        color: const Color(0xff007E3F),
                        borderRadius: BorderRadius.circular(20),

                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Offers",
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white))
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .52,
                  color: Colors.transparent,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: const [
                      CardWidget(
                        image: "assets/carousel3.png",
                        coffeeName: "Le Mate Expresso",
                        coffeeDesc:
                            "A cappuccino is the perfect balance of espresso,  of all element.....",
                        price: "99.9",
                      ),
                      CardWidget(
                        image: "assets/carousel1.png",
                        coffeeName: "Carafe capuciono",
                        coffeeDesc:
                            "A cappuccino is the perfect balance of espresso,  of all element.....",
                        price: "111.9",
                      ),
                      CardWidget(
                        image: "assets/carousel2.png",
                        coffeeName: "Hatte Expresso",
                        coffeeDesc:
                            "A cappuccino is the perfect balance of espresso,  of all element.....",
                        price: "110.9",
                      ),
                      CardWidget(
                        image: "assets/carousel3.png",
                        coffeeName: "Hala mathi",
                        coffeeDesc:
                            "A cappuccino is the perfect balance of espresso,  of all element.....",
                        price: "144.9",
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
