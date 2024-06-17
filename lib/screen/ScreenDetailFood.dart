import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/screen/Widget/widget_detail.dart';
import 'package:oderfoodapp_flutter/strings/detail_food.dart';
import 'package:oderfoodapp_flutter/widgets/menu/home_menu_widget.dart';

class MyColors {
  static const Color color1 = Color(0xFF46289C); // Màu #46289C
  static const Color color2 = Color(0xFF7A6AA6); // Màu #7A6AA6
  static const Color color3 = Color(0xFFB1A538); // Màu #7A6AA6
  static const Color color4 = Color(0xFFD9D9D9); // Màu #644AB5
}

class ScreenDetail extends StatelessWidget {
  const ScreenDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.color1,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: MyColors.color1,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: ListView(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [MyColors.color1, MyColors.color2],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Image.asset(
                  "asset/burger.png",
                  height: 270,
                  width: double.infinity,
                ),
              ),
              Arc(
                edge: Edge.TOP,
                arcType: ArcType.CONVEY,
                height: 20,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                  color: MyColors.color2,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                      color: Colors.blue, width: 2.0),
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.star,
                                        color: MyColors.color3, size: 20),
                                    SizedBox(width: 7),
                                    Text(
                                      '5.0',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(),
                                child: Text("25.000",
                                    style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                          color: MyColors.color3,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('HamBurGer',
                                  style: GoogleFonts.poppins(
                                      textStyle: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ))),
                              Container(
                                width: 90,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: MyColors.color2,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.remove,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '1',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Icon(
                                      Icons.add,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              HamBurGerDetail,
                              maxLines: 3,
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 10),
                child: widget_detail(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => ()),
                      // );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
                      ),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 30)),
                      side: MaterialStateProperty.all(
                        BorderSide(color: Colors.black, width: 1.0),
                      ),
                    ),
                    child: const Text(
                      'Thêm vào giỏ hàng',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
