import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:oderfoodapp_flutter/const/const.dart';
import 'package:oderfoodapp_flutter/strings/restaurant_home_strings.dart';
import 'package:oderfoodapp_flutter/viewmodel/menu_vm/menu_viewmodel_imp.dart';
import 'package:oderfoodapp_flutter/widgets/menu/categories_menu_widget.dart';
import 'package:oderfoodapp_flutter/widgets/menu/home_menu_widget.dart';

class MenuScreen extends StatelessWidget {
  final ZoomDrawerController zoomDrawerController;
  final viewmodel = MenuViewModelImp();

   MenuScreen({super.key, required this.zoomDrawerController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(COLOR_MENU_BACKGROUND),
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
                          backgroundColor: Color(COLOR_ICON_DRAWER),
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
            // const Divider(
            // thickness: 1,
            // ),
            HomeMenuWidget(zoomDrawerController: zoomDrawerController), // menu
            // const Divider(
            // thickness: 1,
            // ),
            MenuWidget(
              icon: Icons.list,
              menuName: categoryText,
              callback: viewmodel.navigateCategories, 
              zoomDrawerController: zoomDrawerController,
            ),
          ],
        ),
      ),
    );
  }
}
