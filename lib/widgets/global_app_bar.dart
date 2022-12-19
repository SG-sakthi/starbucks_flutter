import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:badges/badges.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

class CoffeesAppBar extends StatelessWidget {
  CoffeesAppBar({Key? key}) : super(key: key);
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimSearchBar(
              width: 300,
              textController: textController,
              onSuffixTap: () {},
              color: Colors.white,
              helpText: "Search Here",
              closeSearchOnSuffixTap: true,
              rtl: true,
              prefixIcon: const Icon(
                Iconsax.search_favorite_14,
                color: Color(0xff007E3F),
              ),
            ),
            const Spacer(),
            Badge(
              badgeColor: Colors.red,
              padding: const EdgeInsets.all(7),
              badgeContent: const Text(
                "3",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "Itempage");
                },
                child: const Icon(
                  Iconsax.bag_2,
                  size: 30,
                  color: Color(0xff007E3F),
                ),
              ),
            ),
          ],
        ));
  }
}
