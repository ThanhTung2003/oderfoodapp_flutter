import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:oderfoodapp_flutter/strings/restaurant_home_strings.dart';
import 'package:oderfoodapp_flutter/viewmodel/menu_vm/menu_viewmodel_imp.dart';
import 'package:oderfoodapp_flutter/widgets/menu/menu_widget.dart';
import 'package:oderfoodapp_flutter/widgets/menu/home_menu_widget.dart';
import 'package:oderfoodapp_flutter/widgets/menu/menu_widget_callback.dart';

class MenuScreen extends StatelessWidget {
  final ZoomDrawerController zoomDrawerController;
  final viewmodel = MenuViewModelImp();

  MenuScreen({super.key, required this.zoomDrawerController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(
          255, 156, 164, 91), //const Color(COLOR_MENU_BACKGROUND)
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                DrawerHeader(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 40),
                        child: const CircleAvatar(
                          maxRadius: 40,
                          backgroundColor: Colors.amber,
                          child: Icon(
                            Icons.restaurant,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            HomeMenuWidget(
              zoomDrawerController: zoomDrawerController,
            ), // menu
            Container(
              height: 4,
            ),

            MenuWidget(
              icon: Icons.restaurant_rounded,
              menuName: restaurantList,
              callback: viewmodel.backtoRestaurantList,
              zoomDrawerController: zoomDrawerController,
            ),
            Container(
              height: 4,
            ),

            MenuWidget(
              icon: Icons.list,
              menuName: categoryText,
              callback: viewmodel.navigateCategories,
              zoomDrawerController: zoomDrawerController,
            ),
            Container(
              height: 4,
            ),

            const Spacer(),
            MenuWidgetCallback(
              icon: viewmodel.checkLoginState(context)
                  ? Icons.logout
                  : Icons.login,
              menuName:
                  viewmodel.checkLoginState(context) ? logoutText : loginText,
              callback: viewmodel.checkLoginState(context)
                  ? viewmodel.logout
                  : viewmodel.login,
              zoomDrawerController: zoomDrawerController,
            ),
          ],
        ),
      ),
    );
  }
}
