import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:starbucks/widgets/buy_widget.dart';

import '../controller/images_controller.dart';

class Buypage extends StatelessWidget {
  Buypage({Key? key}) : super(key: key);
  final ImagesController _ctrl = Get.put(ImagesController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  color: const Color(0xff007E3F),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  child: Row(
                    children: [
                      Container(
                        color: const Color(0xff007E3F),
                        padding: const EdgeInsets.only(bottom: 10, left: 0),
                        height: 60,
                        width: 60,
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context, "/");
                            },
                            child: const Icon(
                              Iconsax.arrow_left,
                              color: Colors.white,
                            )),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        color: const Color(0xff007E3F),
                        height: 60,
                        child: Text(
                          "My Cart",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Container(
              padding: const EdgeInsets.only(right: 250),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("Your Items",
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54)),
            ),
            const SizedBox(
              height: 7,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .4,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: _ctrl.pics.length,
                        itemBuilder: (context, int index) {
                          return Dismissible(
                            background: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                    color: const Color(0xff007E3F),
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Icon(
                                  Iconsax.trash,
                                  color: Colors.white,
                                )),
                            secondaryBackground: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                alignment: Alignment.centerRight,
                                decoration: BoxDecoration(
                                    color: const Color(0xff007E3F),
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Icon(
                                  Iconsax.trash,
                                  color: Colors.white,
                                )),
                            onDismissed: (direction) {
                              // _ctrl.pics.removeAt(index);
                            },
                            key: Key(_ctrl.pics[index]),
                            child: BuyWidget(
                              coffeeName: _ctrl.heading[index],
                              price: _ctrl.price[index],
                              image: _ctrl.pics[index],
                            ),
                          );
                        }),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: const Color(0xff007E3F),
                    child: Text(
                      "Coupons",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        const Icon(
                          Iconsax.tag_25,
                          size: 25,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Apply coupon",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    height: 30,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Price details",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.grey.shade900),
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                  Column(
                    children: [
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Text(
                              "Total MRP",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.grey.shade800),
                            ),
                            const Spacer(),
                            Text(
                              "\$3,555",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.grey.shade800),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Text(
                              "Discouont on MRp",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.grey.shade900),
                            ),
                            const Spacer(),
                            Text(
                              "\$2,999",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.grey.shade800),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Text(
                              "Convinence fee",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.grey.shade900),
                            ),
                            const Spacer(),
                            Text(
                              "Free",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.grey.shade800),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Text(
                              "Festive offer",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.grey.shade900),
                            ),
                            const Spacer(),
                            Text(
                              "-",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  color: Colors.grey.shade800),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.grey,
                        child: Row(
                          children: [
                            Text(
                              "Total",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.grey.shade900),
                            ),
                            const Spacer(),
                            Text(
                              "\$3,555",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.grey.shade900),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 300,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff007E3F)
                    ),
                    child: Text(
                      "Buy 4 items",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ), const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
