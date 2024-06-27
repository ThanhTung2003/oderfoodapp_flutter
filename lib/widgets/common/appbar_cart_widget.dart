import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/screen/cart_detail_screen.dart';
import 'package:oderfoodapp_flutter/state/cart_state.dart';

class AppBarCartButton extends StatelessWidget implements PreferredSizeWidget {

  final String title;
  final CartStateController cartStateController = Get.find();

  AppBarCartButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: GoogleFonts.roboto(color: Colors.black),
      ),
      elevation: 10,
      backgroundColor: Colors.amber,
      foregroundColor: const Color(0xFF644AB5),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        Obx(() => badges.Badge(
          position: badges.BadgePosition.topEnd(top: 0, end: 1),
          showBadge: true,
          ignorePointer: false,
          onTap: () {},
          badgeContent: Text(
            '${cartStateController.getQuantity()}', // Hiển thị số lượng giỏ hàng
            style: const TextStyle(color: Colors.white),
          ),
          badgeAnimation: const badges.BadgeAnimation.rotation(
            animationDuration: Duration(seconds: 1),
            colorChangeAnimationDuration: Duration(seconds: 1),
            loopAnimation: false,
            curve: Curves.fastOutSlowIn,
            colorChangeAnimationCurve: Curves.easeInCubic,
          ),
          child: IconButton(
            icon: const Icon(Icons.shopping_cart_checkout_outlined, color: Colors.black),
            onPressed: () => Get.to(() => CartDetailScreen()),
          ),
        ),
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
