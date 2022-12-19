import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe_app/constraints.dart';
import 'package:food_recipe_app/size_config.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({required String this.iconSrc, required this.title});

  final String iconSrc, title;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return InkWell(
      onTap: () {},
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: defaultSize * 2, vertical: defaultSize * 3),
          child: Row(
            children: <Widget>[
              SvgPicture.asset(iconSrc),
              SizedBox(
                width: defaultSize * 2,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: defaultSize * 1.6, // 16
                  color: KTextColor,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: KTextColor,
                size: defaultSize * 1.6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
