import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell/widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:oderfoodapp_flutter/main.dart';
import 'package:oderfoodapp_flutter/screen/account/account_detail.dart';
import 'package:oderfoodapp_flutter/screen/log_in.dart';

class MyColors {
  static const Color color1 = Color(0xFF46289C); // Màu #46289C
  static const Color color2 = Color(0xFF7A6AA6); // Màu #7A6AA6
}

class SrceenAccount extends StatefulWidget {
  const SrceenAccount({super.key});

  @override
  State<SrceenAccount> createState() => _SrceenAccount();
}

class _SrceenAccount extends State<SrceenAccount> {
  
  final _foldingCellKey1 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey2 = GlobalKey<SimpleFoldingCellState>();
  final _foldingCellKey3 = GlobalKey<SimpleFoldingCellState>();

  // final bool _switch = false;
  // ThemeData _dark = ThemeData(brightness: Brightness.dark);
  // ThemeData _light = ThemeData(brightness: Brightness.light);

  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Account Method',
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.w800)),
              ),
              const Icon(
                Icons.settings,
                size: 30,
              )
            ],
          ),
          leading: const BackButton(),
          backgroundColor: Colors.amber,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.topCenter,
                    child: SimpleFoldingCell.create(
                      key: _foldingCellKey1,
                      frontWidget: _buildFrontWidget1(),
                      innerWidget: _buildInnerWidget1(),
                      cellSize: Size(MediaQuery.of(context).size.width, 140),
                      padding: const EdgeInsets.all(15),
                      animationDuration: const Duration(milliseconds: 500),
                      borderRadius: 10,
                      // ignore: avoid_print
                      onOpen: () => print('cell opened 1'),
                      // ignore: avoid_print
                      onClose: () => print('cell closed 1'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SimpleFoldingCell.create(
                      key: _foldingCellKey2,
                      frontWidget: _buildFrontWidget2(),
                      innerWidget: _buildInnerWidget2(),
                      cellSize: Size(MediaQuery.of(context).size.width, 140),
                      padding: const EdgeInsets.all(15),
                      animationDuration: const Duration(milliseconds: 500),
                      borderRadius: 10,
                      // ignore: avoid_print
                      onOpen: () => print('cell opened 2'),
                      // ignore: avoid_print
                      onClose: () => print('cell closed 2'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SimpleFoldingCell.create(
                      key: _foldingCellKey3,
                      frontWidget: _buildFrontWidget3(),
                      innerWidget: _buildInnerWidget3(),
                      cellSize: Size(MediaQuery.of(context).size.width, 140),
                      padding: const EdgeInsets.all(15),
                      animationDuration: const Duration(milliseconds: 500),
                      borderRadius: 10,
                      // ignore: avoid_print
                      onOpen: () => print('cell opened 3'),
                      // ignore: avoid_print
                      onClose: () => print('cell closed 3'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 80.0)),
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(fontSize: 25)),
                        side: MaterialStateProperty.all(
                            const BorderSide(color: Colors.black, width: 1)),
                      ),
                      child: Text('Đăng Xuất',
                          style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 28,
                              color: Colors.black,
                            ),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildFrontWidget1() {
    return Container(
      color: Colors.amber,
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Tài Khoản&Bảo Mật",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 27.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(50)),
              child: TextButton(
                onPressed: () => _foldingCellKey1.currentState?.toggleFold(),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: const Size(70, 40),
                ),
                child: Text(
                  "MỞ",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInnerWidget1() {
    return Container(
        color: const Color.fromARGB(255, 132, 177, 199),
        padding: const EdgeInsets.only(top: 10, left: 15),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => detail_account()),
                        );
                      },
                      child: Text(
                        "Thông Tin Tài Khoản",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
                TextButton(
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Đổi Mật Khẩu",
                      style: GoogleFonts.roboto(
                        fontSize: 25.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Xử lý sự kiện khi nút được nhấn
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Thẻ Ngân Hàng",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () => _foldingCellKey1.currentState?.toggleFold(),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: const Size(80, 40),
                ),
                child: Text(
                  "Đóng",
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ),
        ]));
  }

  Widget _buildFrontWidget2() {
    return Container(
        color: Colors.amber,
        alignment: Alignment.center,
        child: Stack(children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Cài Đặt",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 27.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () => _foldingCellKey2.currentState?.toggleFold(),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: const Size(80, 40),
                ),
                child: Text(
                  "MỞ",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ]));
  }

  Widget _buildInnerWidget2() {
    return Container(
      color: const Color.fromARGB(255, 132, 177, 199),
      padding: const EdgeInsets.only(top: 10),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {
                        // Xử lý sự kiện khi nút được nhấn
                      },
                      child: Text(
                        "Cài Đặt Thông Báo",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
                TextButton(
                  onPressed: () {
                    // Xử lý sự kiện khi nút được nhấn
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Cài Đặt Riêng Tư",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Xử lý sự kiện khi nút được nhấn
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Chặn Người Dùng",
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () => _foldingCellKey2.currentState?.toggleFold(),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: const Size(80, 40),
                ),
                child: Text("Đóng",
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.black),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFrontWidget3() {
    return Container(
      color: Colors.amber,
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Giao Diện và Ngôn Ngữ",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 27.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () => _foldingCellKey3.currentState?.toggleFold(),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: const Size(80, 40),
                ),
                child: Text(
                  "MỞ",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInnerWidget3() {
      final themeController = Get.find<ThemeController>();
    
    return Container(
      color: const Color.fromARGB(255, 132, 177, 199),
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(top: 5),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {
                        // Xử lý sự kiện khi nút được nhấn
                      },
                      child: Text(
                        "Thay đổi Ngôn Ngữ",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
                 Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                      onPressed: () {
                        // Xử lý sự kiện khi nút được nhấn
                      },
                      child: Text(
                        "Thay đổi Ngôn Ngữ",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                        ),
                        
                      )
                      ),
                ),
                 Text(
                  themeController.isDarkMode.value ? 'Dark' : 'Light',
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                Switch(
                  value: themeController.isDarkMode.value,
                  onChanged: (value) {
                    themeController.toggleTheme();
                  },
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              height: 40,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () => _foldingCellKey3.currentState?.toggleFold(),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  minimumSize: const Size(80, 40),
                ),
                child: Text("Đóng",
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.w400, color: Colors.black),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
