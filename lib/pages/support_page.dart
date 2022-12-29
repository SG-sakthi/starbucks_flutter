import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin:EdgeInsets.symmetric(horizontal: 15,vertical: 10) ,
                  width:MediaQuery.of(context).size.width,
                  child: Text("Help Center",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color:Color(0xff007E3F)
                  ),),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 18),
                  width:MediaQuery.of(context).size.width,
                  height: 150,
                  child: Row(
                    children: [
                      Container(
                        width:180,
                        child: Text("Please get in touch with us,we are always here to help you",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color:Colors.grey.shade700,
                          ),),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Image.asset("assets/support.png"),
                      )

                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15,vertical: 11),
                  child: Text("Frequently asked"
                    ,style: GoogleFonts.poppins(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color:Color(0xff007E3F),
                  ),),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width*.99,
                  height: 130,
                  child: ListView(
                     scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      children:[ Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                          width: 160,
                          height: 130,
                          decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),
                          color: Color(0xff007E3F)),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("How to re-purchase membership?",style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color:Colors.white
                                ),),
                                Container(
                                  margin: EdgeInsets.only(top: 45,right: 5),
                                  child: Icon(
                                      Iconsax.arrow_right_1,
                                      color:Colors.white
                                  ),
                                )
                              ],
                            )
                        ),
                        SizedBox(width: 10,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                          width: 160,
                          height: 160,
                          decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),
                              color: Colors.orange),
                          child:Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("Profile does not gets update",style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color:Colors.white
                              ),),
                              Container(
                                margin: EdgeInsets.only(top: 45,right: 5),
                                child: Icon(
                                  Iconsax.arrow_right_1,
                                  color:Colors.white
                                ),
                              )
                            ],
                          )

                        ),SizedBox(width: 10,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                          width: 160,
                          height: 130,
                          decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),
                              color: Colors.yellow.shade600),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Getting Login,Sign up issues!",style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color:Colors.white
                                ),),
                                Container(
                                  margin: EdgeInsets.only(top: 45,right: 5),
                                  child: Icon(
                                      Iconsax.arrow_right_1,
                                      color:Colors.white
                                  ),
                                )
                              ],
                            )  ),SizedBox(width: 10,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                          width: 160,
                          height: 130,
                          decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),
                              color: Color(0xff007E3F)),
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Membership does not exist!",style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color:Colors.white
                                ),),
                                Container(
                                  margin: EdgeInsets.only(top: 45,right: 5),
                                  child: Icon(
                                      Iconsax.arrow_right_1,
                                      color:Colors.white
                                  ),
                                )
                              ],
                            )  ),SizedBox(width: 10,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                          width: 160,
                          height: 130,
                          decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),
                              color: Colors.orange),
                          child: Text("Issues with recent orders?",style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color:Colors.white
                          ),),
                        )
                      ],
                    ),]
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height:40,
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  width: MediaQuery.of(context).size.width,
                  color:Color(0xff007E3F),
                  child: Text("More Queries related to your Experience"
                    ,style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color:Colors.white,
                    ),),
                ),
SizedBox(
  height: 17,
),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 30,
                        child: Row(
                          children: [
                            Container(
                              child: Text("Refund issues",style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color:Colors.grey.shade600,
                              ),),

                            ),
                            Spacer(),
                            Container(
                              child: Icon(
                                Iconsax.arrow_right_1,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 30,
                        child: Row(
                          children: [
                            Container(
                              child: Text("Login,sign up issues",style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color:Colors.grey.shade600,
                              ),),

                            ),
                            Spacer(),
                            Container(
                              child: Icon(
                                Iconsax.arrow_right_1,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 30,
                        child: Row(
                          children: [
                            Container(
                              child: Text("Membership does not exists",style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color:Colors.grey.shade600,
                              ),),

                            ),
                            Spacer(),
                            Container(
                              child: Icon(
                                Iconsax.arrow_right_1,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
                Container(

                  padding: EdgeInsets.symmetric(vertical: 3),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 30,
                        child: Row(
                          children: [
                            Container(
                              child: Text("Issues with recent orders",style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color:Colors.grey.shade600,
                              ),),

                            ),
                            Spacer(),
                            Container(
                              child: Icon(
                                Iconsax.arrow_right_1,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        height: 30,
                        child: Row(
                          children: [
                            Container(
                              child: Text("Other",style: GoogleFonts.poppins(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color:Colors.grey.shade600,
                              ),),

                            ),
                            Spacer(),
                            Container(
                              child: Icon(
                                Iconsax.arrow_right_1,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Colors.grey,
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
