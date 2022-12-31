import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class ProfileWidget extends StatelessWidget {
  ProfileWidget({
    Key? key,
    required this.icon,
    this.heading,
    this.subheading,
  }) : super(key: key);
  final IconData icon;
  final String? heading;
  final String? subheading;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                child: Icon(
                  icon,
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
                    heading!,
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade800),
                  ),
                  Text(
                    subheading!,
                    style: GoogleFonts.poppins(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade800),
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
                  color: Colors.grey.shade800,
                ),
              ),

            ],
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
