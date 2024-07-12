import 'package:flutter/material.dart';

abstract class MenuViewModel {
  void navigateCategories();
  void backtoRestaurantList();
  void navigateHomeScreen();
  bool checkLoginState(BuildContext context);
  void login(BuildContext context);
  void logout(BuildContext context);
  void navigationHome(BuildContext context);
}
