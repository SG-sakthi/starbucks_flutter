import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:star/pages/Homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';
import 'package:star/controller/navbar_controller.dart';

GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
int page = 100;
final _navbar = Get.put(NavBar());

class Cofees extends StatelessWidget {
  const Cofees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              color: Color(0xff007E3F),
              backgroundColor: const Color(0xffFFFFFF),
              buttonBackgroundColor: Color(0xff007E3F),
              key: _bottomNavigationKey,
              index: 1,

              items: [
                GestureDetector(
                  child: Icon(
                    Iconsax.user,
                    color: Colors.white,
                  ),
                  //   onTap: () {
                  //     Get.to(()=> const Cofees(),
                  //       transition: Transition.noTransition,
                  //       duration: const Duration(milliseconds: 0)
                  //     );
                  //   },
                ),
                GestureDetector(
                  child: Icon(
                    Iconsax.coffee,
                    color: Colors.white,
                  ),
                  onTap: () {}
                ),
                GestureDetector(
                  child: Icon(
                    Iconsax.home_25,
                    color: Colors.white,
                  ),
                  onTap: () {
                    Get.to(()=> const Hompage(),
                        transition: Transition.noTransition,
                        duration: const Duration(milliseconds: 0)
                    );
                  },
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
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
               child: Column(

                 children: [
                   Container(

                    width:MediaQuery.of(context).size.width,
                    height:40,
                    margin: EdgeInsets.only(top:100 ),
                   padding: EdgeInsets.only(left: 20),
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
                         margin: EdgeInsets.symmetric(horizontal: 10 , vertical:20),
                         padding: EdgeInsets.symmetric(vertical: 0,horizontal: 30),
                         decoration: BoxDecoration(
                           color: Color(0xff007E3F),
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
                         margin: EdgeInsets.symmetric(horizontal: 0 , vertical:20),
                         padding: EdgeInsets.symmetric(vertical: 0,horizontal: 25),
                         decoration: BoxDecoration(
                           color: Color(0xff007E3F),
                           borderRadius: BorderRadius.circular(20),
                         ),
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Text("Featured",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w600,
                                     color: Colors.white ))


                           ],
                         ),


                       ),
                       Container(
                         height: 30,
                         margin: EdgeInsets.symmetric(horizontal: 10 , vertical:20),
                         padding: EdgeInsets.symmetric(vertical: 0,horizontal: 30),
                         decoration: BoxDecoration(
                           color: Color(0xff007E3F),
                           borderRadius: BorderRadius.circular(20),
                         ),
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Text("Offers",
                                 style: GoogleFonts.poppins(
                                     fontSize: 16,
                                     fontWeight: FontWeight.w600,
                                     color: Colors.white ))


                           ],
                         ),


                       ),
                     ],
                   ),
                 Stack(
                   children: [
                     Container(
                       margin: EdgeInsets.symmetric(horizontal: 10 , vertical:20),
                       height: 150,
                       width: 370,

                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(15),
                         color: Colors.green
                       ),
                     ),
                     Container(
                       margin: EdgeInsets.symmetric(horizontal: 10 , vertical:20),
                       height: 150,
                       width: 140,

                       child: Image.asset("assets/carousel3.png"),
                       
                     ),
                     Container(
                       margin: EdgeInsets.only(left: 140,top: 20),
                       padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                       height: 150,
                       width: 220,
                        child: Column(
                          children: [
                            Text(
                               "Le Mate Expresso",
                               style: GoogleFonts.poppins(
                                   fontSize: 18,
                                   fontWeight: FontWeight.w600,
                                   color: Colors.white )
                       ),
                            Text("Le Mate Expresso",
                            style: GoogleFonts.poppins(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: Colors.white ))
                          ],
                        ),
                     )

                   ],

                 )


                 ],

               ),




                )));
  }
}

