import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:star/controller/navbar_controller.dart';
import 'package:star/pages/Itempage.dart';
import 'package:star/widgets/HomeAppBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'Cofees.dart';

GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
int page = 100;
final _navbar = Get.put(NavBar());

class Hompage extends StatelessWidget {
  const Hompage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(value: const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Color(0xff007E3F),
    ),
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            color: Color(0xff007E3F),
            backgroundColor: const Color(0xffFFFFFF),
            buttonBackgroundColor: Color(0xff007E3F),
            key: _bottomNavigationKey,
            index: 2,

            items: [
              GestureDetector(
                child: Icon(
                  Iconsax.user,
                  color: Colors.white,
                ),
                onTap: () {
                  Get.to(()=> const Cofees(),
                    transition: Transition.noTransition,
                    duration: const Duration(milliseconds: 0)
                  );
                },
               ),
              GestureDetector(
                child: Icon(
                  Iconsax.coffee,
                  color: Colors.white,
                ),
                onTap: () {
                  Get.to(()=> const Cofees(),
                      transition: Transition.noTransition,
                      duration: const Duration(milliseconds: 0)
                  );
                },
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
          ),
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Stack(
              children: [
                const HomeAppBar(),
                Container(
                  color: Color(0xff007E3F),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  margin: const EdgeInsets.symmetric(
                    vertical: 55,
                    horizontal: 0,
                  ),
                  child: Stack(
                    children: [
                      Container(
                  width:300 ,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18.0, vertical: 30),
                          child: Text(
                            "Stressed, blessed\nand Coffee\nobsessed",
                            style: GoogleFonts.poppins(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          top: -30 ,
                          left: 140,
                          child: Container(
                              width: 380,
                              height: 380,
                              child: Transform.rotate(
                                  angle: -120,
                                  child: Image.asset("assets/shadow.png")))),
                      Positioned(
                          top: -30,
                          left: 160,
                          child: Container(
                              height: 280,
                              child: Transform.rotate(
                                  angle: -120,
                                  child: Image.asset("assets/bg1.png")))),
                      Positioned(
                          top: -32,
                          left: 340,
                          child: Container(
                              height: 280,
                              child: Transform.rotate(
                                  angle: 13.3,
                                  child: Image.asset("assets/bg2.png"))))
                    ],
                  ),
                ),
                Positioned(
                  top: 200,
                  child: GestureDetector(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/round1.png"))),
                      child: CarouselSlider.builder(
                          itemCount: _navbar.pics.length,
                          itemBuilder: (_, int index, int controller) {
                            return Container(
                              height: 300,
                              child: Column(
                                children: [
                                  Container(
                                      height: 300,
                                      child: Image.asset(_navbar.pics[index])),
                                  SizedBox(
                                    height: 0,
                                  ),
                                  Text(
                                    _navbar.heading[index],
                                    style: GoogleFonts.poppins(
                                        fontSize: 20,
                                        color: Color(0xff007E3F),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: 290,
                                    child: Text(
                                      _navbar.desc[index],
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        color: Color(0xff007E3F),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          options: CarouselOptions(
                            aspectRatio: 9 / 16,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds:3),
                            enlargeCenterPage: true,
                            scrollPhysics: BouncingScrollPhysics(),

                          )),
                    ),
                    onTap: () {
                      Get.to(()=> const ItemPage(),
                          transition: Transition.noTransition,
                          duration: const Duration(milliseconds: 0)
                      );
                    },
                  ),
                ),
              ],
            ),

          ),
        ),
      ),
    );
  }
}
