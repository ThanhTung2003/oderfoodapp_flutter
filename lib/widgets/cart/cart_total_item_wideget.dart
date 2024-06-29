import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalItemWidget extends StatelessWidget {
  const TotalItemWidget({
    super.key,
    required this.text,
    required this.isSubTotal,
    required this.value,
  });

  final String text;
  final bool isSubTotal;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: isSubTotal ? 24 : 20,
                color: isSubTotal ? Colors.red : Colors.grey),
          ),
          Text(
            value,
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: isSubTotal ? 24 : 20,
                color: isSubTotal ? Colors.red : Colors.black),
          ),
        ],
      ),
    );
  }
}
