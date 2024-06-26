import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarCartButton extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppBarCartButton({super.key, required this.title});

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
        badges.Badge(
          position: badges.BadgePosition.topEnd(top: 0, end: 1),
          showBadge: true,
          ignorePointer: false,
          onTap: () {},
          badgeContent:
          //const Text('0'), 
          const Icon(Icons.check, color: Colors.white, size: 10),
          badgeAnimation: const badges.BadgeAnimation.rotation(
            animationDuration: Duration(seconds: 1),
            colorChangeAnimationDuration: Duration(seconds: 1),
            loopAnimation: false,
            curve: Curves.fastOutSlowIn,
            colorChangeAnimationCurve: Curves.easeInCubic,
          ),
          child: IconButton(
            
            icon: const Icon(Icons.shopping_cart_checkout_outlined,color: Colors.black,),
            onPressed: () {},
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
