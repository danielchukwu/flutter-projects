import 'package:flutter/material.dart';
import 'package:food_recipe_app/constraints.dart';
import 'package:food_recipe_app/size_config.dart';

class Categories extends StatefulWidget {
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["All", "Indian", "Italian", "Mexican", "Chinese"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize * 2),
      child: SizedBox(
        height: SizeConfig.defaultSize * 3.5, // 35px
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildCategoryItem(index),
          itemCount: categories.length,
        ),
      ),
    );
  }

  Widget buildCategoryItem(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: SizeConfig.defaultSize * 2),
        padding: EdgeInsets.symmetric(
          vertical: SizeConfig.defaultSize * 0.5, // 5
          horizontal: SizeConfig.defaultSize * 2, // 20
        ),
        decoration: BoxDecoration(
          color: selectedIndex == index ? Color(0xFFEFF3EE): Colors.transparent,
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize *1.6),
        ),
        child: Text(
          categories[index],
          style: TextStyle(fontWeight: FontWeight.bold, color: selectedIndex == index ? KPrimaryColor : Color(0xFFC2C2B5)),
        ),
      ),
    );
  }
}
