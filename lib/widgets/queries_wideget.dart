import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class QueriesWidget extends StatelessWidget {
   QueriesWidget({Key? key, this.issues, }) : super(key: key);
final String ? issues;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  child: Text(issues!,
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade800,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  child: Icon(
                    Iconsax.arrow_right_1,
                    color: Colors.grey.shade800,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
