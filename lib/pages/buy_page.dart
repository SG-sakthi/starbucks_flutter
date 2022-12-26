import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:star/widgets/buy_widget.dart';

import '../controller/images_controller.dart';

class Buypage extends StatelessWidget {
  Buypage({Key? key}) : super(key: key);
  final ImagesController _ctrl = Get.put(ImagesController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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

          Container(
            height: MediaQuery.of(context).size.height*.57,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child:ListView.builder(
              physics: const BouncingScrollPhysics(),
                itemCount: _ctrl.pics.length,
                itemBuilder: (context,int index){
              return BuyWidget(
                coffeeName: _ctrl.heading[index],
                price: _ctrl.price[index],
                image: _ctrl.pics[index],
              );
            })
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Text("Apply Coupon",
            style:GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: const Color(0xff007E3F)
            ),),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: 400,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:Colors.green.shade100,

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,


                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
