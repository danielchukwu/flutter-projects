import 'package:flutter/cupertino.dart';
import 'package:food_recipe_app/screens/home/home_screen.dart';

class ProfileMenuItem {
  final String iconSrc;
  final String title;
  final Widget destination;

  ProfileMenuItem({required this.iconSrc, required this.title, required this.destination});
}

List<ProfileMenuItem> menuItems = [
  ProfileMenuItem(iconSrc: "assets/icons/bookmark_fill.svg", title: 'Saved Recipe', destination: HomeScreen()),
  ProfileMenuItem(iconSrc: "assets/icons/chef_color.svg", title: 'Super Plan', destination: HomeScreen()),
  ProfileMenuItem(iconSrc: "assets/icons/language.svg", title: 'Change Language', destination: HomeScreen()),
  ProfileMenuItem(iconSrc: "assets/icons/info.svg", title: 'Help', destination: HomeScreen()),
];