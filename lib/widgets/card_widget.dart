import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {Key? key, this.image, this.coffeeName, this.coffeeDesc, this.price})
      : super(key: key);
  final String? image;
  final String? coffeeName;
  final String? coffeeDesc;
  final String? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(

        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              height: 150,
              width: 370,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 2, color: const Color(0xff007E3F)),
                  color: Colors.white),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              padding: const EdgeInsets.all(7.7),
              height: 150,
              width: 140,
              child: Image.asset(image!),
            ),
            Container(
              margin: const EdgeInsets.only(left: 140, top: 20),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 150,
              width: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(coffeeName!,
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                    width: 170,
                    child: Text(coffeeDesc!,
                        style: GoogleFonts.poppins(
                            fontSize: 9, color: Colors.black45)),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text("\$ ${price}",
                          style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black))
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: const Color(0xff007E3F),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: const Icon(
                          Iconsax.shopping_cart5,
                          size: 17,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 8),
                      AnimatedButton(
                        width: 150,
                        height: 30,
                        text: 'Buy Now',
                        isReverse: true,
                        selectedTextColor: Colors.white,
                        transitionType: TransitionType.LEFT_TO_RIGHT,
                        textStyle: const TextStyle(
                            fontSize: 16,
                            letterSpacing: 4,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                        backgroundColor: Colors.orange.shade400,
                        selectedBackgroundColor: const Color(0xff007E3F),
                        borderRadius: 7,
                        borderWidth: 2,
                        onPress: () {},
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Positioned(
              right: 24,
              top: 29,
              child: Icon(
                Iconsax.heart5,
                size: 23,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
