import 'package:flutter/material.dart';
import 'package:food_recipe_app/components/my_bottom_nav_bar.dart';
import 'package:food_recipe_app/constraints.dart';
import 'package:food_recipe_app/screens/profile/components/body.dart';
import 'package:food_recipe_app/size_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: myBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: KPrimaryColor,
      leading: SizedBox(),
      title: Text('Profile'),
      centerTitle: true,
      actions: <Widget>[
        TextButton(
          child: Text(
            'Edit',
            style: TextStyle(
              fontSize: SizeConfig.defaultSize * 1.6,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
