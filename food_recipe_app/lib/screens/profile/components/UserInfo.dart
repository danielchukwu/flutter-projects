import 'package:flutter/material.dart';
import 'package:food_recipe_app/constraints.dart';
import 'package:food_recipe_app/size_config.dart';

class Info extends StatelessWidget {
  final String name, email, image;

  Info({required this.name, required this.email, required this.image});

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SizedBox(
      height: defaultSize * 24, // 240
      child: Stack(
        children: [
          Container(
            height: defaultSize * 15, // 150
            color: KPrimaryColor,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: defaultSize * 14,
                  height: defaultSize * 14,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.white,
                        width: defaultSize * 0.8),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(image)),
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: defaultSize * 2.2,
                    // fontWeight: FontWeight.bold,
                    color: KTextColor,
                  ),
                ),
                SizedBox(height: defaultSize / 2,),
                Text(
                  email,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF8492A2)
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
