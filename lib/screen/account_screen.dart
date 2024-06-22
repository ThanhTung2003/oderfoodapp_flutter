// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell/widget.dart';
import 'package:google_fonts/google_fonts.dart';




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
    // Theme:_isDarkMode?ThemeData.dark() : ThemeData.light();
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      'Account',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: ClipOval(
                      child: Image.asset(
                        'asset/logo.jpg',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SrceenAccount()),
                      );
                    },
                  ),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              // padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                   color: Colors.black.withOpacity(0.1),
                   spreadRadius: 2,
                   blurRadius: 15,
                   offset: const Offset(0, 7), // changes position of shadow
                  ),
                ],
              ),
              // color: Colors.blue,
              alignment: Alignment.topCenter,
              child: SimpleFoldingCell.create(
                key: _foldingCellKey1,
                frontWidget: _buildFrontWidget1(),
                innerWidget: _buildInnerWidget1(),
                cellSize: Size(MediaQuery.of(context).size.width, 140),
                padding: const EdgeInsets.all(15),
                animationDuration: const Duration(milliseconds: 500),
                borderRadius: 10,
                onOpen: () => print('cell opened 1'),
                onClose: () => print('cell closed 1'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                   color: Colors.black.withOpacity(0.1),
                   spreadRadius: 2,
                   blurRadius: 15,
                   offset: const Offset(0, 7), // changes position of shadow
                  ),
                ],
              ),
              // color: Colors.blue,
              // alignment: Alignment.bottomCenter,
              child: SimpleFoldingCell.create(
                key: _foldingCellKey2,
                frontWidget: _buildFrontWidget2(),
                innerWidget: _buildInnerWidget2(),
                cellSize: Size(MediaQuery.of(context).size.width, 140),
                padding: const EdgeInsets.all(15),
                animationDuration: const Duration(milliseconds: 500),
                borderRadius: 10,
                onOpen: () => print('cell opened 2'),
                onClose: () => print('cell closed 2'),
              ),
            ),
          ),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                   color: Colors.black.withOpacity(0.1),
                   spreadRadius: 2,
                   blurRadius: 15,
                   offset: const Offset(0, 7), // changes position of shadow
                   ),
                 ],
               ),
              
              // color: Colors.blue,
              // alignment: Alignment.bottomCenter,
              child: SimpleFoldingCell.create(
                key: _foldingCellKey3,
                frontWidget: _buildFrontWidget3(),
                innerWidget: _buildInnerWidget3(),
                cellSize: Size(MediaQuery.of(context).size.width, 140),
                padding: const EdgeInsets.all(15),
                animationDuration: const Duration(milliseconds: 500),
                borderRadius: 10,
                onOpen: () => print('cell opened 3'),
                onClose: () => print('cell closed 3'),
              ),
                       ),
           ),
        ],
      ),
    )
    );
  }

  Widget _buildFrontWidget1() {
    return Container(
     color: Colors.white,
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Tài Khoản&Bảo Mật",
              style: GoogleFonts.roboto(
                color: const Color(0xFF2e282a),
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: TextButton(
              onPressed: () => _foldingCellKey1.currentState?.toggleFold(),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(80, 40),
              ),
              child: Text(
                "MỞ 1",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight : FontWeight.w600,
                  
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInnerWidget1() {
    return Container(
      color: const Color(0xFFecf2f9),
      padding: const EdgeInsets.only(top: 10),
      child: Stack(
        children: [
           Column(
             children: [
               Align(alignment: Alignment.topLeft,
               child: 
               TextButton(
                 onPressed: () {
                   // Xử lý sự kiện khi nút được nhấn
                 },
                 child: Text(
                   "Thông Tin Tài Khoản",
                   style: GoogleFonts.poppins(
                     color: const Color(0xFF2e282a),
                     fontSize: 25.0,
                     fontWeight: FontWeight.bold,
                   ),
                 )
               ),
               ),        
              TextButton(
             onPressed: () {
               // Xử lý sự kiện khi nút được nhấn
             },
             child: Align(
               alignment: Alignment.topLeft,
               child: 
                 Text(
                   "Đổi Mật Khẩu",
                   style: GoogleFonts.poppins(
                     color: const Color(0xFF2e282a),
                     fontSize: 25.0,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
             ),
             ) 
              ] ,
           ) ,
     Positioned(
            right: 10,
            bottom: 10,
            child: TextButton(
              onPressed: () => _foldingCellKey1?.currentState?.toggleFold(),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(80, 40),
              ),
              child: Text(
                "Đóng 1",
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontSize: 15
                  ),
                ),
              ),
            ),
          ),
         ]
      )
    );  
  }
  

  Widget _buildFrontWidget2() {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Cài Đặt",
              style: GoogleFonts.roboto(
                color: Color(0xFF2e282a),
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: TextButton(
              onPressed: () => _foldingCellKey2?.currentState?.toggleFold(),
              child: Text(
                "MỞ 2",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight : FontWeight.w600,
                  
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(80, 40),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInnerWidget2() {
    return Container(
      color: Color(0xFFecf2f9),
      padding: EdgeInsets.only(top: 10),
      child: Stack(
        children: [
           Align(
          alignment: Alignment.topLeft,
          child: TextButton(
            onPressed: () {
              // Xử lý sự kiện khi nút được nhấn
            },
            child: Text(
              " ",
              style: GoogleFonts.poppins(
                color: Color(0xFF2e282a),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            )
          )
        ),
        
          Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
            onPressed: () {
              // Xử lý sự kiện khi nút được nhấn
            },
            child: Text(
              "",
              style: GoogleFonts.poppins(
                color: const Color(0xFF2e282a),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            )
          )
        ),
          Positioned(
            right: 10,
            bottom: 10,
            child: TextButton(
              onPressed: () => _foldingCellKey2?.currentState?.toggleFold(),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(80, 40),
              ),
              child: const Text(
                "Đóng 2",
              ),
            ),
          ),
        ],
      ),
    );
  }

  
  Widget _buildFrontWidget3() {
    return Container(
       color: Colors.white,
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Cài Đặt Giao Diện",
              style: GoogleFonts.roboto(
                color: const Color(0xFF2e282a),
                fontSize: 35.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: TextButton(
              onPressed: () => _foldingCellKey3?.currentState?.toggleFold(),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(80, 40),
              ),
              child: Text(
                "MỞ 3",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight : FontWeight.w600,
                  
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInnerWidget3() {
    return Container(
      
      color: const Color(0xFFecf2f9),
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.only(top: 5),
      child: Stack(
        children: [
          Column(
            children: [
                 Container(
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 1),
                  alignment: Alignment.topLeft,
                  child: TextButton(
                                 onPressed: () {},
                              child: Text(
                                " Sáng&tối",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.poppins(
                  color: Color(0xFF2e282a),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                   alignment: Alignment.topLeft,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: 
                         const Icon(Icons.dark_mode,
                         size: 40,
                         ),
                      ),
                   
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: 
                         const Icon(Icons.sunny,
                         size: 40,
                         ),
                      ),
                    ],
                    ),
                )
            ]
                    ),
          // widget_switchmode(),
            Positioned(
            right: 10,
            bottom: 10,
            child: TextButton(
              onPressed: () => _foldingCellKey3?.currentState?.toggleFold(),
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(80, 40),
              ),
              child: const Text(
                "Đóng 3",
              ),
            ),
          ),
        ],
      ),
      );
  }
}

    
    