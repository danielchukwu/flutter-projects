import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe_app/models/RecipeBundel.dart';
import 'package:food_recipe_app/size_config.dart';

class RecipeBundleCard extends StatelessWidget {
  final RecipeBundle recipeBundle;

  const RecipeBundleCard({super.key, required this.recipeBundle});

  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      decoration: BoxDecoration(
        color: recipeBundle.color,
        borderRadius: BorderRadius.circular(defaultSize * 1.8),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(defaultSize * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  // Title
                  Text(
                    recipeBundle.title,
                    style: TextStyle(
                      fontSize: defaultSize * 2.2,
                      color: Colors.white,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: defaultSize * 0.5,
                  ), // 5
                  // Sub-Title
                  Text(
                    recipeBundle.description,
                    style: TextStyle(color: Colors.white54),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Spacer(),// 5
                  buildInfoRow(
                    defaultSize,
                    iconSrc: "assets/icons/chef.svg",
                    text: "${recipeBundle.recipes} Recipes",
                  ),
                  SizedBox(height: defaultSize * 0.5), // 5
                  buildInfoRow(
                    defaultSize,
                    iconSrc: "assets/icons/pot.svg",
                    text: "${recipeBundle.chefs} Chefs",
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 0.71,
            child: Image.asset(
              recipeBundle.imageSrc,
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft,
            ),
          )
        ],
      ),
    );
  }

  Widget buildInfoRow(double defaultSize, {String iconSrc = "", text}) {
    return Row(
      children: <Widget>[
        SvgPicture.asset(iconSrc),
        SizedBox(
          width: defaultSize,
        ), // 10
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
