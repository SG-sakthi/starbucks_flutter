import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:get/get.dart';
import 'package:star/controller/navbar_controller.dart';
import 'package:star/pages/buy_page.dart';
import 'package:star/widgets/item_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class ItemPages extends StatelessWidget {
  final _ctrl = Get.put(NavBarCtrl());
  final String? image;
  final String? coffeeName;

  ItemPages({Key? key, this.image, this.coffeeName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemAppBar(),
                  Container(
                    child: Stack(children: [
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 290,
                            color: Color(0xffDFCEB9),
                          ),
                        ],
                      ),
                      Positioned(
                          child: Container(
                              width: 370,
                              height: 280,
                              child: Image.asset("assets/itemshad.png"))),
                      Positioned(
                          child: Container(
                              padding: EdgeInsets.only(bottom: 20),
                              width: 360,
                              height: 280,
                              child: Image.asset(image!))),
                      Positioned(
                        top: 125,
                        child: Stack(
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width,
                                height: 202,
                                child: Image.asset("assets/Frame.png")),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 38),
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              width: MediaQuery.of(context).size.width,
                              height: 130,

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width:320,
                                        child: Text(
                                          coffeeName!,
                                          style: GoogleFonts.poppins(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: const Color(0xffFFFFFF),
                                          ),
                                        ),
                                      ),
                                     Container(
                                        height: 40,
                                        child: IconButton(
                                          onPressed: () {
                                            _ctrl.fav.value = !_ctrl.fav.value;
                                            _ctrl.update();
                                          },
                                          icon: Obx(() {
                                            return Icon(
                                              Iconsax.heart5,
                                              size: 30,
                                              color: _ctrl.fav.value
                                                  ? Color(0xffFF3939)
                                                  : Colors.white,
                                            );
                                          }),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 8),
                                    child: Text(
                                      "With soy milk",
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: const Color(0xffE2E2E2),
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 8),
                                      width: MediaQuery.of(context).size.width,
                                      height: 45,
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 37,
                                            width: 37,
                                            child:
                                                Image.asset("assets/milk.png"),
                                          ),
                                          SizedBox(
                                            width: 18,
                                          ),
                                          Container(
                                              height: 37,
                                              width: 37,
                                              child: Image.asset(
                                                  "assets/caramel.png")),
                                          SizedBox(
                                            width: 18,
                                          ),
                                          Container(
                                              height: 37,
                                              width: 37,
                                              child: Image.asset(
                                                  "assets/bean.png")),
                                        ],
                                      )),
                                  Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 14),
                                      width: MediaQuery.of(context).size.width,
                                      height: 18,
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
                                      ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Size Options",
                            style: GoogleFonts.poppins(
                              decoration: TextDecoration.underline,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff007E3F),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 35, right: 35),
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
                        Container(

                            margin: EdgeInsets.only(left: 50, top: 5),
                            height: 20,
                            child: Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 55,
                                  child: Text(
                                    "Small",
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Container(
                                  height: 55,
                                  width: 55,
                                  child: Text(
                                    "Medium",
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Container(
                                  height: 55,
                                  width: 55,
                                  child: Text(
                                    "Large",
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 18,
                                ),
                                Container(
                                  height: 55,
                                  width: 55,
                                  child: Text(
                                    "XLarge",
                                    style: GoogleFonts.poppins(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Container(


                          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child:Text(
                            "Description",
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff007E3F),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * .16,
                          child: ListView(
                              physics: const BouncingScrollPhysics(),
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 25),
                                  child: Text(
                                    "A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elementcappuccino is the perfect balance of espresso, steamed milk and foam.A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elementcappuccino is the perfect balance of espresso, steamed milk and foam.A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elementcappuccino is the perfect balance of espresso, steamed milk and foam.A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elementcappuccino is the perfect balance of espresso, steamed milk and foam.A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elementcappuccino is the perfect balance of espresso, steamed milk and foam.A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elementcappuccino is the perfect balance of espresso, steamed milk and foam.A cappuccino is the perfect balance of espresso, steamed milk and foam. This coffee is all about the structure and the even splitting of all elementcappuccino is the perfect balance of espresso, steamed milk and foam. ",
                                    textAlign: TextAlign.justify,
                                    style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff636363),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          height: 50,
                          width: 500,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    child: Text(
                                      " Price",
                                      style: GoogleFonts.poppins(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff007E3F),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      " \$99.9",
                                      style: GoogleFonts.poppins(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xff007E3F),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(

                              child: AnimatedButton(
                                width: 240,
                                height: 45,
                                text: 'Add to Bag',
                                isReverse: true,
                                selectedTextColor: Colors.white,
                                transitionType: TransitionType.CENTER_LR_IN,
                                textStyle: const TextStyle(
                                    fontSize: 16,
                                    letterSpacing: 4,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                                backgroundColor: const Color(0xff007E3F),
                                selectedBackgroundColor:
                                    Colors.orange.shade400,
                                borderRadius: 7,
                                borderWidth: 2,
                                animatedOn: AnimatedOn.onTap,
                                animationDuration: const Duration(milliseconds: 100),
                                onPress: () {
                                  Navigator.pushNamed(context, "cofees");
                                },
                              ),
                                ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
