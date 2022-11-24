import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:star/controller/navbar_controller.dart';
import 'package:star/widgets/HomeAppBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
int page = 100;
final _navbar = Get.put(NavBar());

class Hompage extends StatelessWidget {
  const Hompage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: const Color(0xff007E3F),
          buttonBackgroundColor: Colors.white,
          key: _bottomNavigationKey,
          index: 2,
          onTap: (index) {
            page = index;
            _navbar.navBarColor.value = false;
            print(index);
            print("True");
            _navbar.update();
          },
          items: const [
            Icon(
              Iconsax.user,
              color: Color(0xff007E3F),
            ),
            Icon(
              Iconsax.coffee,
              color: Color(0xff007E3F),
            ),
            Icon(
              Iconsax.home_2,
              color: Color(0xff007E3F),
            ),
            Icon(
              Iconsax.call,
              color: Color(0xff007E3F),
            ),
            Icon(
              Iconsax.shopping_cart,
              color: Color(0xff007E3F),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HomeAppBar(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                margin: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 0,
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18.0, vertical: 10),
                      child: Text(
                        "Stressed, blessed,\n and coffee\n obsessed",
                        style: GoogleFonts.poppins(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff007E3F),
                        ),
                      ),
                    ),
                    Positioned(
                        top: -50,
                        left: 150,
                        child: Container(
                            height: 300,
                            child: Transform.rotate(
                                angle: -120,
                                child: Image.asset("assets/bg1.png")))),
                    Positioned(
                        top: -42,
                        left: 340,
                        child: Container(
                            height: 300,
                            child: Transform.rotate(
                                angle: 13.3,
                                child: Image.asset("assets/bg2.png"))))
                  ],
                ),
              ),
              Container(
                width: 500,
                height: 400,
                child: Image.asset("assets/circle1.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
