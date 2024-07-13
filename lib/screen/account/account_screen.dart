import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell/widget.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  child: Container(
                  padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                    ),
                      color: Colors.amber,
                      border: Border.all(color: Colors.black, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SimpleFoldingCell.create(
                      key: _foldingCellKey2,
                      frontWidget: _buildFrontWidget2(),
                      innerWidget: _buildInnerWidget2(),
                      cellSize: Size(MediaQuery.of(context).size.width, 140),
                      animationDuration: const Duration(milliseconds: 500),
                      padding: const EdgeInsets.all(15),
                      borderRadius: 10,
                      onOpen: () => print('cell opened 2'),
                      // ignore: avoid_print
                      // ignore: avoid_print
                      onClose: () => print('cell closed 2'),
                  ),
                ),
                  padding: const EdgeInsets.all(10.0),
                Padding(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                      borderRadius: BorderRadius.circular(10),
                    child: SimpleFoldingCell.create(
                      key: _foldingCellKey3,
                      cellSize: Size(MediaQuery.of(context).size.width, 140),
                      innerWidget: _buildInnerWidget3(),
                      frontWidget: _buildFrontWidget3(),
                      padding: const EdgeInsets.all(15),
                      borderRadius: 10,
                      animationDuration: const Duration(milliseconds: 500),
                      // ignore: avoid_print
                      onOpen: () => print('cell opened 3'),
                      // ignore: avoid_print
                    ),
                      onClose: () => print('cell closed 3'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                      onPressed: () {
                  child: SizedBox(
                    child: ElevatedButton(
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                            const EdgeInsets.symmetric(
                        padding: MaterialStateProperty.all(
                                vertical: 20.0, horizontal: 80.0)),
                        textStyle: MaterialStateProperty.all(
                        side: MaterialStateProperty.all(
                            const TextStyle(fontSize: 25)),
                      ),
                            const BorderSide(color: Colors.black, width: 1)),
                      child: Text('Đăng Xuất',
                            textStyle: const TextStyle(
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w600,
                              fontSize: 28,
                              color: Colors.black,
                          )),
                    ),
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
              height: 40,
            child: Container(
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50)
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: TextButton(
                onPressed: () => _foldingCellKey1.currentState?.toggleFold(),
                  backgroundColor: Colors.white,
                style: TextButton.styleFrom(
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
                  alignment: Alignment.topLeft,
                Align(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          MaterialPageRoute(
                          context,
                              builder: (context) => detail_account()),
                      },
                        );
                      child: Text(
                        "Thông Tin Tài Khoản",
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
                  onPressed: () {},
                TextButton(
                  child: Align(
                    alignment: Alignment.topLeft,
                      "Đổi Mật Khẩu",
                    child: Text(
                        fontSize: 25.0,
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                      ),
                        fontWeight: FontWeight.w500,
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
                onPressed: () => _foldingCellKey1.currentState?.toggleFold(),
              child: TextButton(
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
                  ),
                        fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        ]));
  }

  Widget _buildFrontWidget2() {
    return Container(
        color: Colors.amber,
        child: Stack(children: <Widget>[
        alignment: Alignment.center,
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
              width: 80,
              decoration: BoxDecoration(
               height: 40,
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                style: TextButton.styleFrom(
                onPressed: () => _foldingCellKey2.currentState?.toggleFold(),
                  minimumSize: const Size(80, 40),
                  backgroundColor: Colors.white,
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
                        "Cài Đặt Thông Báo",
                          color: Colors.black,
                      child: Text(
                        style: GoogleFonts.roboto(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                TextButton(
                ),
                  onPressed: () {
                    // Xử lý sự kiện khi nút được nhấn
                  },
                  child: Align(
                    child: Text(
                    alignment: Alignment.topLeft,
                      "Cài Đặt Riêng Tư",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 25.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Xử lý sự kiện khi nút được nhấn
                  child: Align(
                  },
                    alignment: Alignment.topLeft,
                      "Chặn Người Dùng",
                    child: Text(
                        color: Colors.black,
                      style: GoogleFonts.roboto(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                    ),
                      ),
                  ),
                )
            ),
              ],
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
                    )),
                          fontWeight: FontWeight.w400, color: Colors.black),
                      textStyle: const TextStyle(
                child: Text("Đóng",
                    style: GoogleFonts.roboto(
                ),
                  minimumSize: const Size(80, 40),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                onPressed: () => _foldingCellKey2.currentState?.toggleFold(),
              child: TextButton(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.black, width: 1),
              decoration: BoxDecoration(
              width: 80,
               height: 40,
              ),
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
                  minimumSize: const Size(80, 40),
                  backgroundColor: Colors.white,
                style: TextButton.styleFrom(
                onPressed: () => _foldingCellKey3.currentState?.toggleFold(),
              child: TextButton(
              ),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.black, width: 1),
              decoration: BoxDecoration(
              width: 80,
               height: 40,
            child: Container(
                ),
                ),
                  ),
                    fontWeight: FontWeight.w500,
                  style: GoogleFonts.roboto(
                  "MỞ",
                child: Text(
                    color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInnerWidget3() {
    return Container(
       color: const Color.fromARGB(255, 132, 177, 199),
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(top: 5),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
            ),
              ],
                ),
                        ),
                      )),
                          fontWeight: FontWeight.w500,
                          fontSize: 25.0,
                          color: Colors.black,
                        style: GoogleFonts.roboto(
                        "Thay đổi Ngôn Ngữ",
                      child: Text(
                      },
                        // Xử lý sự kiện khi nút được nhấn
                      onPressed: () {
                  child: TextButton(
                  alignment: Alignment.topLeft,
                Align(
              children: [
          ),
          Positioned(
            right: 10,
            bottom: 10,
                    )),
                          fontWeight: FontWeight.w400, color: Colors.black),
                      textStyle: const TextStyle(
                    style: GoogleFonts.roboto(
                child: Text("Đóng",
                ),
                  minimumSize: const Size(80, 40),
                  backgroundColor: Colors.white,
                style: TextButton.styleFrom(
                onPressed: () => _foldingCellKey3.currentState?.toggleFold(),
              child: TextButton(
                borderRadius: BorderRadius.circular(50),
              ),
                border: Border.all(color: Colors.black, width: 1),
            child: Container(
               height: 40,
              width: 80,
              decoration: BoxDecoration(
              ),
            ),
          ),
        ],
      ),
    );
  }
}
