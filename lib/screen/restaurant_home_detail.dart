import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:oderfoodapp_flutter/screen/menu.dart';
import 'package:oderfoodapp_flutter/screen/restaurant_home.dart';

class RestaurantHome extends StatelessWidget {
  final drawerZoomController = ZoomDrawerController();

  RestaurantHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ZoomDrawer(
          controller: drawerZoomController,
          menuScreen: MenuScreen(zoomDrawerController: drawerZoomController), 
          mainScreen: RestaurantHomeDetail(zoomDrawerController: drawerZoomController), 
          borderRadius: 24.0,
          showShadow: true,
          angle: 0.0,
          menuBackgroundColor: Colors.grey[300]!,
          slideWidth: MediaQuery.of(context).size.width * 0.75,
          openCurve: Curves.bounceInOut,
          closeCurve: Curves.ease,
        ),
      ),
    );
  }
}
