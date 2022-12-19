import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe_app/constraints.dart';
import 'package:food_recipe_app/models/ProfileMenuItem.dart';
import 'package:food_recipe_app/screens/profile/components/UserInfo.dart';
import 'package:food_recipe_app/screens/profile/components/profile_menu_item.dart';
import 'package:food_recipe_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Info(
            image: "assets/images/pic.png",
            email: "jhondoe01@gmail.com",
            name: "John Doe",
          ),
          Column(
            children: List<Widget>.generate(
                menuItems.length,
                    (index) => ProfileMenu(iconSrc: menuItems[index].iconSrc, title: menuItems[index].title)
            ),
          ),
        ],
      ),
    );
  }
}