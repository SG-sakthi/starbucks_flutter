import 'package:badges/badges.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff007E3F),
      padding: EdgeInsets.symmetric(
        horizontal: 20 ,
        vertical: 17,
      ),

      child:Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Container(
              height: 25,
              width: 25,
              child: Image.asset("assets/logo2.png")
          ),
      SizedBox(
        width: 10,
      ),
      Text("Starbucks",
        style: GoogleFonts.openSans(
           fontSize: 22,
          fontWeight: FontWeight.w700,
          letterSpacing: 2,
          color: Color(0xffFFFFFF),
        ),),
          Spacer(),
          Badge(
            badgeColor:Colors.red,
            padding:EdgeInsets.all(7),
            badgeContent:Text(
              "3",
              style:TextStyle(
                color:Colors.white,
              ),
            ),
            child: InkWell(
              onTap:(){
                Navigator.pushNamed(context, "cofees");
              },
              child:Icon(
                Iconsax.bag_2,
                size: 30,
                color:Color(0xffFFFFFF),
              ),
            ),
          ),
        ],
      )
    );
  }
}
