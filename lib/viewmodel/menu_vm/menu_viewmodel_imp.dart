import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_ui/flutter_auth_ui.dart';
// ignore: implementation_imports
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:oderfoodapp_flutter/const/const.dart';
import 'package:oderfoodapp_flutter/screen/category_screen.dart';
import 'package:oderfoodapp_flutter/screen/homesrceen.dart';
import 'package:oderfoodapp_flutter/screen/restaurant_home_detail.dart';
import 'package:oderfoodapp_flutter/viewmodel/menu_vm/menu_viewmodel.dart';

class MenuViewModelImp implements MenuViewModel {
  @override
  void navigateCategories() {
    Get.to(() => CategoryScreen());
  }

  @override
  void backtoRestaurantList() {
    Get.back(closeOverlays: true, canPop: false);
  }

  @override
  void navigateHomeScreen() {
    // ignore: prefer_const_constructors
    Get.to(() => HomeScreen());
  }

  @override
  bool checkLoginState(BuildContext context) {
    return FirebaseAuth.instance.currentUser != null ? true : false;
  }

  @override
  void login(BuildContext context) {
    var user = FirebaseAuth.instance.currentUser;
    if (user == null) {
      FlutterAuthUi.startUi(
          items: [AuthUiProvider.phone, AuthUiProvider.email],
          tosAndPrivacyPolicy: const TosAndPrivacyPolicy(
              tosUrl: 'https://google.com',
              privacyPolicyUrl: 'https://youtube.com'),
          androidOption: const AndroidOption(
            enableSmartLock: false,
            showLogo: true,
            overrideTheme: true,
          )).then((value) async {
        navigationHome(context);
      }).catchError((e) {
        Get.snackbar('Error', '$e');
      });
    } else {}
  }

  @override
  void logout(BuildContext context) {
    Get.defaultDialog(
      title: 'Logout!!',
      content: const Text('Do you really want to Logout? '),
      backgroundColor: Colors.white,
      cancel: ElevatedButton(
          onPressed: () => Get.back(), child: const Text('Cancel')),
      confirm: ElevatedButton(
          onPressed: () {
            FirebaseAuth.instance
                .signOut()
                .then((value) => Get.offAll(RestaurantHome()));
          },
          child: const Text('Logout')),
    );
  }

  @override
  void navigationHome(BuildContext context) async {
    var token = await FirebaseAuth.instance.currentUser!.getIdToken();
    var box = GetStorage();
    box.write(KEY_TOKEN, token);
  }
}
