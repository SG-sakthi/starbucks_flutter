import 'package:badges/badges.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
class ItemAppBar extends StatelessWidget {
  const ItemAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffDFCEB9),
        padding: EdgeInsets.symmetric(
          horizontal: 20 ,
          vertical: 17,
        ),
        child:Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            Row(
              children: [
                Container(
        child: InkWell(
            onTap:(){
                    Navigator.pop(context,"/");
                   },
                    child: Icon(
                      Iconsax.arrow_left,
                      color: Color(0xff007E3F),
                    )


                ),

    ),
    ]
            ),
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
                  Navigator.pushNamed(context, "buypage");
                },
                child:Icon(
                  Iconsax.bag_2,
                  size: 30,
                  color:Color(0xff007E3F),
                ),
              ),
            ),
          ],
        )
    );
  }
}
