import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:oderfoodapp_flutter/Theme_UI/darkmode.dart';
import 'package:oderfoodapp_flutter/screen/FavoriteFood.dart';
import 'package:oderfoodapp_flutter/screen/account/account_screen.dart';
import 'package:oderfoodapp_flutter/screen/cart_detail_screen.dart';
import 'package:oderfoodapp_flutter/screen/homesrceen.dart';
import 'package:oderfoodapp_flutter/screen/restaurant_screen.dart';
import 'package:oderfoodapp_flutter/screen/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());

    return Obx(() {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: themeController.isDarkMode.value ? _dark : _light,
        title: 'OderFoodApp',
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/home': (context) => const RestaurantScreen(),
        },
      );
    });
  }
}

ThemeData _dark = ThemeData(brightness: Brightness.dark);
ThemeData _light = ThemeData(brightness: Brightness.light);

class ThemeController extends GetxController {
  var isDarkMode = false.obs;
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
    isDarkMode.value = box.read('darkmode') ?? false;
  }

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    box.write('darkmode', isDarkMode.value);
  }
}
class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      backgroundColor: darkMode
          ? Colors.black
          : Colors.white, // Adjust background color based on dark mode
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          indicatorColor: Colors.amber,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            NavigationDestination(
                icon: Icon(Icons.restaurant), label: 'Restaurant'),
            NavigationDestination(icon: Icon(Icons.receipt), label: 'Order'),
            NavigationDestination(
                icon: Icon(Icons.favorite_border), label: 'Favorite'),
            NavigationDestination(
                icon: Icon(Icons.account_circle_sharp), label: 'Account'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const RestaurantScreen(),
    CartDetailScreen(),
    const FavoriteFood(),
    const SrceenAccount(),
  ];
}
