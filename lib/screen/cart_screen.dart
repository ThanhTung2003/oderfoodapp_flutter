// ignore: file_names

import 'package:flutter/material.dart';
import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/state/food_detail_state.dart';

class MyColors {
  static Color color1 = const Color(0xFF46289C); // Màu #46289C
  static Color color2 = const Color(0xFF7A6AA6);
  static Color color3 = const Color(0xFFB1A538); // Màu #7A6AA6
  static const Color color4 = Color(0xFFD9D9D9); //Màu #644AB5
  static const Color color5 = Color(0xFF53871F);
}

class ScreenCartFood extends StatelessWidget {
  final FoodDetailStateController foodDetailStateController;

  const ScreenCartFood({super.key, required this.foodDetailStateController});

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
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Giỏ Hàng",
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                  ),
                ),
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
                      Obx(
                        () => ElegantNumberButton(
                          initialValue:
                              foodDetailStateController.quantity.value,
                          buttonSizeHeight: 25,
                          buttonSizeWidth: 25,
                          textStyle: GoogleFonts.roboto(),
                          minValue: 1,
                          maxValue: 99,
                          color: Colors.amber,
                          onChanged: (value) {
                            foodDetailStateController.quantity.value =
                                value.toInt();
                          },
                          decimalPlaces: 0,
                        ),
                      )
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
                      Obx(
                        () => ElegantNumberButton(
                          initialValue:
                              foodDetailStateController.quantity.value,
                          buttonSizeHeight: 25,
                          buttonSizeWidth: 25,
                          textStyle: GoogleFonts.roboto(),
                          minValue: 1,
                          maxValue: 99,
                          color: Colors.amber,
                          onChanged: (value) {
                            foodDetailStateController.quantity.value =
                                value.toInt();
                          },
                          decimalPlaces: 0,
                        ),
                      )
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
            padding: const EdgeInsets.only(top: 20, left: 5),
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
