import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../controller/images_controller.dart';

class BuyWidget extends StatelessWidget {
  BuyWidget({Key? key, this.image, this.coffeeName, this.price})
      : super(key: key);
  final String? image;
  final String? coffeeName;
  final String? price;
  final ImagesController _ctrl = Get.put(ImagesController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: 360,
      height: 100,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: const Color(0xff007E3F)),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        // scrollDirection: Axis.horizontal,
        children: [
          Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: const BorderRadius.horizontal(
                    right: Radius.circular(0), left: Radius.circular(14)),
              ),
              child: Image.asset(image!),
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            width: 210,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: 170,
                    child: Text(coffeeName!,
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black))),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: 100,
                  child: Text("\$ $price",
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 180,
                  child: Row(
                    children: [
                      Text("Qty",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black38)),
                      const SizedBox(width: 7),
                      Container(
                          width: 25,
                          height: 25,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xff007E3F),
                          ),
                          child: InkWell(
                            child: const Icon(
                              Iconsax.add,
                              size: 20,
                              color: Colors.white,
                            ),
                            onTap: () => _ctrl.add(),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          alignment: Alignment.center,
                          width: 17,
                          child: Obx(() => Text(_ctrl.item.toString()))),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xff007E3F),
                          ),
                          child: InkWell(
                            child: const Icon(
                              Iconsax.minus,
                              size: 20,
                              color: Colors.white,
                            ),
                            onTap: () => _ctrl.remove(),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
