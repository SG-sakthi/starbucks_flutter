import 'package:flutter/material.dart';
import 'package:star/widgets/HomeAppBar.dart';
import 'package:google_fonts/google_fonts.dart';

class Hompage extends StatelessWidget {
  const Hompage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            HomeAppBar(),
            Container(
              
              width: MediaQuery.of(context).size.width,
              height:300,
              margin: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 0,
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
                    child: Text(
                      "Stressed, blessed,\n and coffee\n obsessed",
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Positioned(
                    top: -50,
                      left: 150,
                      child: Container(
                          height: 300,
                          child: Transform.rotate(
                              
                              angle: -120,
                              child: Image.asset("assets/bg1.png")))),
                  Positioned(
                    top: -40,
                      left: 340,
                      child: Container(
                          height: 300,
                          child: Transform.rotate(

                              angle: 13.3,
                              child: Image.asset("assets/bg2.png"))))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
