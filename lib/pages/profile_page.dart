import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:starbucks/widgets/profilecard_widget.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
  List<IconData> icon = [
    Iconsax.profile_circle,
    Iconsax.box,
    Iconsax.crown5,
    Iconsax.heart5,
  ];
  List<String> heading = ["Edit Profile", "Orders", "Membership", "Wishlist"];
  List<String> subheading = [
    "Name,Mail,Mobile,Language,etc..",
    "Check your order status",
    "Perks,Priviliges,Prides",
    "Your most loved ones"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
              child: Text(
                "Profile",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff007E3F)),
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
                          color: const Color(0xff007E3F),
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.only(
                            left: 260,
                            top: 80,
                          ),
                          height: 120,
                          child: Text(
                            "Hi, Sakthi",
                            style: GoogleFonts.poppins(
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 70, left: 30),
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey.shade300,
                              image: const DecorationImage(
                                  image: AssetImage("assets/profile.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 160, top: 135),
                          alignment: Alignment.center,
                          width: 170,
                          height: 35,
                          decoration: BoxDecoration(
                              color: const Color(0xff007E3F),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text(
                            "Add  Profile",
                            style: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
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
              height: 10,
            ),
            Container(
                height: MediaQuery.of(context).size.height * .3,
                child: ListView.builder(
                  itemCount: icon.length,
                  itemBuilder: (context, int index) {
                    return ProfileWidget(
                      icon: icon[index],
                      heading: heading[index],
                      subheading: subheading[index],
                    );
                  },
                )),
            SizedBox(
              height: 20,
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              width: 170,
              height: 40,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff007E3F), width: 2),
                  borderRadius: BorderRadius.circular(7)),
              child: Text(
                "Log Out ",
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff007E3F),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
