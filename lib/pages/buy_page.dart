import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/painting/border_radius.dart';
import 'package:iconsax/iconsax.dart';

class Buypage extends StatelessWidget {
  const Buypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Color(0xff007E3F) ,
                width: MediaQuery.of(context).size.width,
                height: 55,
                child: Row(
                  children: [
                    Container(
                      color: Color(0xff007E3F),
                      padding: EdgeInsets.only(bottom: 10,left: 0),
                      height: 60,
                      width: 60,

                      child: InkWell(
                          onTap:(){
                            Navigator.pop(context,"/");
                          },
                          child: Icon(
                            Iconsax.arrow_left,
                            color: Colors.white,
                          )


                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                      color: Color(0xff007E3F),
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
          SizedBox(
            height: 2,
          ),
          Container(
            padding: EdgeInsets.only(right: 250),
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text("Your Items",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black54)),
          ),
          Container(
              width: 360,
              height: 100,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Color(0xff007E3F)),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.horizontal(
                            right: Radius.circular(0),
                            left: Radius.circular(20)),
                      ),
                      child: Image.asset("assets/carousel1.png"),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
                  Container(
                    height: 100,
                    width: 2,
                    color: Color(0xff007E3F),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 230,
                    height: 100,
                    child: Column(
                      children: [
                        Container(
                          width: 220,
                          child: Row(
                            children: [
                              Container(
                                  width: 150,
                                  child: Text("Le Mate Expresso",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black))),
                              SizedBox(width: 50,),
                              Container(

                                width: 20,
                                height: 20,
                                child: Icon(
                                  Iconsax.trash4,
                                  size: 20,
                                  color: Colors.green,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 220,
                          child: Text("\$99.9 tax.inc",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 300,
                          child: Row(
                            children: [
                              Container(
                                color: Colors.red,
                                width: 50,
                                child: Text("Qty",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black38)),
                              ),
                              SizedBox(width: 10),
                              Container(
                                color: Colors.green,
                                width: 70,
                                child: Text("Qty",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black38)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    ));
  }
}
