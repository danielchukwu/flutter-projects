import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe_app/constraints.dart';
import 'package:food_recipe_app/models/NavItem.dart';
import 'package:food_recipe_app/size_config.dart';
import 'package:provider/provider.dart';

class myBottomNavBar extends StatelessWidget {
  const myBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Consumer<NavItems>(
      builder: (context, navItems, child) => Container(
        padding: EdgeInsets.symmetric(horizontal: defaultSize * 3), // 30
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 2,
            color: Color(0xFF4B1A39).withOpacity(.1),
          ),
        ]),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List<Widget>.generate(
              navItems.items.length,
              (index) => buildIconNavBarItems(
                iconSrc: navItems.items[index].icon,
                press: () {
                  navItems.changeNavIndex(index: index);
                  if (navItems.visitNewDestination()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => navItems.items[index].destination,),
                    );
                  }
                },
                isActive: navItems.selectedIndex == index,
              ),
            ),
          ),
        ),
      ),
    );
  }

  IconButton buildIconNavBarItems({iconSrc, press, isActive = false}) {
    return IconButton(
      icon: SvgPicture.asset(
        iconSrc,
        color: isActive ? KPrimaryColor : Color(0xFFD1D4D4),
        height: 22,
      ),
      onPressed: press,
    );
  }
}
