import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:star/widgets/ItemAppBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Stack(children: [
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 380,
                          color: Color(0xffDFCEB9),
                        ),
                      ],
                    ),
                    Positioned(
                        child: Container(
                            width: 370,
                            height: 370,
                            child: Image.asset("assets/itemshad.png"))),
                    Positioned(
                        child: Container(
                            width: 360,
                            height: 360,
                            child: Image.asset("assets/carousel3.png"))),
                    Positioned(
                        top: 240,
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 152,
                            child: Image.asset("assets/Frame.png"))),
                    Positioned(
                        top: 258,
                        left: 10,
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                "Americano. Caffè Lattino.",
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            Container(
                              height: 30,
                              child: Icon(
                                Iconsax.heart5,
                                size: 30,
                                color: Color(0xffFF3939),
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                        top: 287,
                        left: 10,
                        child: Container(
                          child: Text(
                            "With soy milk",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xffE2E2E2),
                            ),
                          ),
                        )),
                    Positioned(
                        top: 320,
                        left: 20,
                        child: Row(
                          children: [
                            Container(
                              height: 37,
                              width: 37,
                              child: Image.asset("assets/milk.png"),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                                height: 37,
                                width: 37,
                                child: Image.asset("assets/caramel.png")),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                                height: 37,
                                width: 37,
                                child: Image.asset("assets/bean.png")),
                          ],
                        )),
                    Positioned(
                        top: 357,
                        left: 26,
                        child: Row(
                          children: [
                            Container(
                              height: 37,
                              width: 30,
                              child: Text(
                                "Milk",
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 37,
                              width: 45,
                              child: Text(
                                "Caramel",
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 17,
                            ),
                            Container(
                              height: 37,
                              width: 60,
                              child: Text(
                                " Bean",
                                style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xffFFFFFF),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                        top: 407,
                        left: 20,
                        child: Container(
                          child: Text(
                            "Size Options",
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.underline,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff007E3F),
                            ),
                          ),
                        )),
                    Positioned(
                        top: 455,
                        left: 55,
                        child: Row(
                          children: [
                            Container(
                              height: 55,
                              width: 55,
                              child: Image.asset("assets/small.png"),
                            ),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                                height: 55,
                                width: 55,
                                child: Image.asset("assets/medium.png")),
                            SizedBox(
                              width: 18,
                            ),
                            Container(
                                height: 55,
                                width: 55,
                                child: Image.asset("assets/large.png")),
                            SizedBox(
                              width: 18,
                            ),

                            Container(
                                height: 55,
                                width: 55,
                                child: Image.asset("assets/XL.png")),
                          ],
                        )),
                    Positioned(
                        top: 527,
                        left: 20,
                        child: Container(
                          child: Text(
                            "Description",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff007E3F),
                            ),
                          ),
                        )),
                    Positioned(
                        top: 557,
                        left: 30,
                        child: Container(
                          width: 330,
                          height: MediaQuery.of(context).size.height,

                          child: Text(
                            "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elementcappuccino is the perfect balance of espresso, steamed milk and foam. ",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff636363),
                            ),
                          ),
                        )),
            Positioned(
              top: 658,
              left: 32,
              child: Row(
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      child: Text("Price \n 99.9",
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff007E3F),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Container(
                      color: Color(0xff007E3F),
                        height: 47,
                        width: 240,
                    ),
                  ],
              )
            ),
                    Positioned(
                        top: 670,
                        left: 175,
                        child: Container(
                          width: 240,
                          height: 48,
                          child: Text(
                            "Buy Now",
                            style: GoogleFonts.poppins(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xffFFFFFF),
                            ),
                          ),
                        )),


                    ItemAppBar(),
                  ]),
                ))));
  }
}
