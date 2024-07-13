// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class itemSrcollHomeFood extends StatelessWidget {
  const itemSrcollHomeFood({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 15.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 100),
                          padding: EdgeInsets.zero,
                        ),
                        child: Image.asset(
                          "asset/burger.png",
                          height: 60,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Burger",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400)),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 100),
                          padding: EdgeInsets.zero,
                        ),
                        child: Image.asset(
                          "asset/pizza.avif.png",
                          height: 60,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Pizza",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400)),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 100),
                          padding: EdgeInsets.zero,
                        ),
                        child: Image.asset(
                          "asset/tomato.png",
                          height: 60,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "French fries",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400)),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 100),
                          padding: EdgeInsets.zero,
                        ),
                        child: Image.asset(
                          "asset/rice.avif.png",
                          height: 60,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Seafood Rice",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400)),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(100, 100),
                          padding: EdgeInsets.zero,
                        ),
                        child: Image.asset(
                          "asset/hotdog.avif.png",
                          height: 50,
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                       Text(
                        "Hot dog",
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
