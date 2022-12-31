import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class FaQWidget extends StatelessWidget {
 FaQWidget({Key? key, this.queries, this.color}) : super(key: key);
 final Color? color;
 final String? queries;
  @override
  Widget build(BuildContext context) {



    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child:Row(
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
              width: 160,
              height: 130,
              decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),
                  color:color! ),

              child:Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(queries!,style: GoogleFonts.poppins(
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
        ],
      ),
    );
  }
}
