import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starbucks/widgets/faq_widget.dart';
import 'package:starbucks/widgets/queries_wideget.dart';

class SupportPage extends StatelessWidget {
  List<String> queries = [
    "How to re-purchase membership",
    "Profile does not exists!",
    "getting logging/sign-up issues ",
    "Membership deos not exist",
    "Issues with recent orders?"
  ];
  List<String> issues = [
    "Refund issues",
    "Login,sign up issues",
    "Membership does not exists",
    "Issues with recent orders",
    "Other"
  ];
  List<Color> color = [
    Color(0xff007E3F),
    Colors.orange,
    Colors.yellow,
    Color(0xff007E3F),
    Colors.orange
  ];

  SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Help Center",
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff007E3F)),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Row(
                children: [
                  Container(
                    width: 180,
                    child: Text(
                      "Please get in touch with us,we are always here to help you",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700,
                      ),
                    ),
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
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 11),
              child: Text(
                "Frequently asked",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff007E3F),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 10),
                width: MediaQuery.of(context).size.width * .99,
                height: 130,
                child: ListView.builder(
                    itemCount: queries.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index) {
                      return FaQWidget(
                        color: color[index],
                        queries: queries[index],
                      );
                    })),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: MediaQuery.of(context).size.width,
              color: Color(0xff007E3F),
              child: Text(
                "More Queries related to your Experience",
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Container(
              height: MediaQuery.of(context).size.height * .8,
              child: ListView.builder(
                  itemCount: issues.length,
                  itemBuilder: (context, int index) {
                    return QueriesWidget(
                      issues: issues[index],
                    );
                  }),
            )
          ],
        ),
      ),
    ));
  }
}
