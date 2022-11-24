import 'package:badges/badges.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child:Row(
        children:[
          Icon(
          Icons.sort,
          size:30,
          color:Colors.green,
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
              onTap:(){},
              child:Icon(
                Iconsax.bag_2,
                size: 30,
                color:Colors.green,
              ),
            ),
          ),
        ],
      )
    );
  }
}
