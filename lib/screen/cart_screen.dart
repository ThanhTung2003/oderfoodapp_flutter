// ignore: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyColors {
  static Color color1 = const Color(0xFF46289C); // Màu #46289C
  static Color color2 = const Color(0xFF7A6AA6);
  static Color color3 = const Color(0xFFB1A538); // Màu #7A6AA6
  static const Color color4 = Color(0xFFD9D9D9); //Màu #644AB5
  static const Color color5 = Color(0xFF53871F);
}

class Screen_cart_food extends StatelessWidget {
  const Screen_cart_food({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Giỏ Hàng",
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Image(
                image: AssetImage("asset/logo.jpg"),
                height: 90,
                width: 90,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColors.color4,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Image.asset(
                      'asset/burger.png',
                      alignment: Alignment.topCenter,
                      height: 140,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(right: 70),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Burger',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(fontSize: 25)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Text(
                          '25000',
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            fontSize: 20,
                            color: MyColors.color3,
                          )),
                        ),
                      ),
                      // ElegantNumberButton(
                      //   initialValue: 0,
                      //   buttonSizeHeight: 25,
                      //   buttonSizeWidth: 30,
                      //   color: Colors.black,
                      //   minValue: 1,
                      //   maxValue: 100,
                      //   decimalPlaces: 0,
                      //   onChanged: (Value) {},
                      //   // textStyle: GoogleFonts.roboto(),
                      //   textStyle: GoogleFonts.roboto(
                      //       textStyle: const TextStyle(fontSize: 20)),
                      // ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_circle),
                  iconSize: 40,
                  color: Colors.red,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: MyColors.color4,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ]),
                    child: Image.asset(
                      'asset/burger.png',
                      alignment: Alignment.topCenter,
                      height: 140,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(right: 70),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Burger',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(fontSize: 25)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Text(
                          '25000',
                          style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                            fontSize: 20,
                            color: MyColors.color3,
                          )),
                        ),
                      ),
                    //   ElegantNumberButton(
                    //     initialValue: 0,
                    //     buttonSizeHeight: 25,
                    //     buttonSizeWidth: 30,
                    //     color: Colors.black,
                    //     minValue: 1,
                    //     maxValue: 100,
                    //     decimalPlaces: 0,
                    //     onChanged: (Value) {},
                    //     // textStyle: GoogleFonts.roboto(),
                    //     textStyle: GoogleFonts.roboto(
                    //         textStyle: TextStyle(fontSize: 20)),
                    //   ),
                    // ],
              ]),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_circle),
                  iconSize: 40,
                  color: Colors.red,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 5),
            child: Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Ghi Chú',
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Material(
              child: SizedBox(
                height: 70,
                width: 370,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tổng Tiền',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Text(
                  '25000',
                  style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        fontSize: 30,
                        color: MyColors.color3,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SizedBox(
              child: ElevatedButton(
                onPressed: () {
// Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MyHomePage()),
                  // );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 100.0)),
                  textStyle:
                      MaterialStateProperty.all(const TextStyle(fontSize: 25)),
                  side: MaterialStateProperty.all(
                      const BorderSide(color: Colors.black, width: 1.0)),
                ),
                child: Text('Thanh Toán',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
