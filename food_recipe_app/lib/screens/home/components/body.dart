import 'package:flutter/material.dart';
import 'package:food_recipe_app/models/RecipeBundel.dart';
import 'package:food_recipe_app/screens/home/components/categories.dart';
import 'package:food_recipe_app/screens/home/components/recipe_bundle_card.dart';
import 'package:food_recipe_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Categories(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
            child: GridView.builder(
              itemCount: recipeBundles.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                mainAxisSpacing: 20,
                childAspectRatio: 1.65,
              ),
              itemBuilder: (context, index) => RecipeBundleCard(recipeBundle: recipeBundles[index],),
            ),
          ),
        ),
      ],
    );
  }
}
