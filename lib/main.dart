import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:oderfoodapp_flutter/Theme_UI/darkmode.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'abennnnn',
      themeMode: ThemeMode.system,
      darkTheme: ThemeData(
        primarySwatch: Colors.amber,
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const RestaurantScreen(),
      },
    );
  }
}

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      backgroundColor: darkMode ? Colors.black : Colors.white, // Adjust background color based on dark mode
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          indicatorColor: Colors.amber,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Trang chủ'),
            NavigationDestination(
                icon: Icon(Icons.restaurant), label: 'Nhà hàng'),
            NavigationDestination(
                icon: Icon(Icons.receipt), label: 'Đơn hàng'),
            NavigationDestination(
                icon: Icon(Icons.favorite_border), label: 'Yêu thích'),
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
    Container(
      color: Colors.blueAccent,
    )
  ];
}

