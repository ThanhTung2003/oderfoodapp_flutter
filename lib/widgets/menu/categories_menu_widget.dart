import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/strings/restaurant_home_strings.dart';

class CategoriesHomeWidget extends StatelessWidget {
  const CategoriesHomeWidget({
    super.key,
    required this.zoomDrawerController,
  });

  final ZoomDrawerController zoomDrawerController;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => zoomDrawerController.toggle!(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.list,
              color: Colors.white,
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              categoryText,
              style: GoogleFonts.jetBrainsMono(
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