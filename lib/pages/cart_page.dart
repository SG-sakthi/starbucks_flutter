import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbucks/controller/images_controller.dart';
import 'package:starbucks/widgets/global_app_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:starbucks/widgets/card_widget.dart';

import 'items_page.dart';

GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();


class CartPage extends StatelessWidget {
   CartPage({Key? key}) : super(key: key);
   final ImagesController _ctrl = Get.put(ImagesController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  CoffeesAppBar(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 35,
                    margin: const EdgeInsets.only(top: 0),
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Categories",
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Container(

                      height: MediaQuery.of(context).size.height*.67,
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      child:ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: _ctrl.pics.length,
                          itemBuilder: (context,int index){
                            return Container(
                              child: Column(
                                children: [

                                  Container(

                                    child: GestureDetector(
                                      onTap: () {
                                        Get.to(
                                                () => ItemPages(
                                              image: _ctrl.pics[index],
                                              coffeeName:
                                              _ctrl.heading[index],
                                              price: _ctrl.price[index],
                                            ),
                                            transition: Transition.downToUp,
                                            duration:
                                            const Duration(milliseconds: 500));
                                      },
                                      child: CardWidget(
                                        coffeeName: _ctrl.heading[index],
                                        price: _ctrl.price[index],
                                        image: _ctrl.pics[index],
                                        coffeeDesc: _ctrl.info[index],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          })
                  ),
                ],
              ),
            )));
  }
}
