import 'package:flutter/material.dart';

abstract class MenuViewModel {
  void navigateCategories();
  void backtoRestaurantList();
  void processLoginState(BuildContext context);
  void navigateHomeScreen();
}
