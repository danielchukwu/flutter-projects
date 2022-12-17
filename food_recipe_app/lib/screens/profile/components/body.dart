import 'package:flutter/material.dart';
import 'package:food_recipe_app/constraints.dart';
import 'package:food_recipe_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: SizeConfig.defaultSize * 24,  // 240
          child: Stack(
            children: [
              Container(
                height: SizeConfig.defaultSize * 15,  // 150
                color: KPrimaryColor,
              )
            ],
          ),
        )
      ],
    );
  }
}
