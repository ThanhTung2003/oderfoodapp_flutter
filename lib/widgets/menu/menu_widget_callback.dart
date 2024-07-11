import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuWidgetCallback extends StatelessWidget {
  final String menuName;
  final Function(BuildContext context) callback;
  final IconData icon;

  const MenuWidgetCallback({
    required this.menuName,
    required this.callback,
    required this.icon,
    super.key,
    required this.zoomDrawerController,
  });

  final ZoomDrawerController zoomDrawerController;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              menuName,
              style: GoogleFonts.roboto(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            )
          ],
        ),
      ),
    );
  }
}
