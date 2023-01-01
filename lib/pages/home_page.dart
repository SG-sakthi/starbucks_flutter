import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starbucks/controller/images_controller.dart';
import 'package:starbucks/pages/items_page.dart';
import 'package:starbucks/widgets/home_app_bar.dart';

final _navbar = Get.put(ImagesController());

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Color(0xff007E3F),
      ),
      child: SafeArea(
        child: Scaffold(
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
                        width: 300,
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
                          top: -30,
                          left: 140,
                          child: Container(
                              width: 380,
                              height: 380,
                              child: Transform.rotate(
                                  angle: -120,
                                  child: Image(
                                    image: AssetImage("assets/shadow.PNG"),
                                  )))),
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
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(
                                          () => ItemPages(
                                                image: _navbar.pics[index],
                                                coffeeName:
                                                    _navbar.heading[index],
                                                price: _navbar.price[index],
                                              ),
                                          transition: Transition.noTransition,
                                          duration: const Duration(
                                              milliseconds: 500));
                                    },
                                    child: Container(
                                        height: 300,
                                        child: Hero(
                                            tag: _navbar.pics[index],
                                            child: Image.asset(
                                                _navbar.pics[index]))),
                                  ),
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
                            autoPlayInterval: Duration(seconds: 3),
                            enlargeCenterPage: true,
                            scrollPhysics: BouncingScrollPhysics(),
                          )),
                    ),
                    onTap: () {},
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
