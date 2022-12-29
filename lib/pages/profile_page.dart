import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 14),
              child: Text(
                "Profile",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff007E3F)),
              ),
            ),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Stack(children: [
                        Container(
                          color: Color(0xff007E3F),
                          width: MediaQuery.of(context).size.width,
                          padding:EdgeInsets.only(left: 260,top: 80,),
                          height: 120,
                          child: Text(
                              "Hi, Sakthi",
                            style:GoogleFonts.poppins(
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                                color:Colors.white) ,

                          ),

                        ),
                        Container(
                          margin: EdgeInsets.only(top:70,left: 30),
                          width: 100,
                          height:100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey.shade300,
                            image: DecorationImage(image: AssetImage("assets/profile.jpg"),fit: BoxFit.cover)
                    ),

                        ),
                        Container(
                          margin: EdgeInsets.only(left: 160,top: 135),
                         alignment: Alignment.center,
                         width: 170,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color(0xff007E3F),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child:Text(
                            "Add  Profile",
                            style:GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color:Colors.white) ,
                          ),
                        )
                      ]),

                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 5,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade400,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.99,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 65,
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 14),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Iconsax.profile_circle,
                            size: 25,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                             Text(
                                "Edit Profile",
                                style:GoogleFonts.poppins(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color:Colors.grey.shade800) ,
                              ),
                            Text("Name,Mail,Mobile,Languauge",
                              style:GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color:Colors.grey.shade800) ,
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: 30,
                          height: 30,
                          child: Icon(
                            Iconsax.arrow_right_1,
                            size: 25,
                            color:Colors.grey.shade800,
                          ),
                        ),

                      ],
                    ),
                  ),
                  Divider(color: Colors.grey,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 65,
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 14),
                    child: Row(

                      children: [
                        Container(
                          child: Icon(
                            Iconsax.box,
                            size: 25,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Orders",
                              style:GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color:Colors.grey.shade800) ,
                            ),
                            Text("Check your order status",
                              style:GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color:Colors.grey.shade800) ,
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: 30,
                          height: 30,
                          child: Icon(
                            Iconsax.arrow_right_1,
                            size: 25,
                            color:Colors.grey.shade800,
                          ),
                        ),

                      ],
                    ),
                  ),
                  Divider(color: Colors.grey,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 65,
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 14),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Iconsax.crown5,
                            size: 25,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Membership",
                              style:GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color:Colors.grey.shade800) ,
                            ),
                            Text("Perks,Priviliges,Prides",
                              style:GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color:Colors.grey.shade800) ,
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: 30,
                          height: 30,
                          child: Icon(
                            Iconsax.arrow_right_1,
                            size: 25,
                            color:Colors.grey.shade800,
                          ),
                        ),

                      ],
                    ),
                  ),
                  Divider(color: Colors.grey,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 65,
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 14),
                    child: Row(
                      children: [
                        Container(
                          child: Icon(
                            Iconsax.heart5,
                            size: 25,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Wishlist",
                              style:GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color:Colors.grey.shade800) ,
                            ),
                            Text("Your most loved ones",
                              style:GoogleFonts.poppins(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color:Colors.grey.shade800) ,
                            )
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: 30,
                          height: 30,
                          child: Icon(
                            Iconsax.arrow_right_1,
                            size: 25,
                            color:Colors.grey.shade800,
                          ),
                        ),

                      ],
                    ),
                  ),
                  Divider(color: Colors.grey,),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    margin:EdgeInsets.symmetric(horizontal: 60) ,
                    alignment: Alignment.center,
                    width: 170,
                    height:40,
                    decoration: BoxDecoration(

                        border:Border.all(color: Color(0xff007E3F),width: 2),
                      borderRadius: BorderRadius.circular(7)
                    ),
                    child:Text(
                      "Log Out ",
                      style:GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff007E3F),) ,
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}