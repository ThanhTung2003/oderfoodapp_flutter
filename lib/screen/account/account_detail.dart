import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/screen/account/Change_accountdetail.dart';

// ignore: camel_case_types, must_be_immutable
class detail_account extends StatelessWidget {
  detail_account({super.key});
  String userName = "";
  String userEmail = "";
  String userAddress = "";
  String userPhone = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
              child: Container(
        color: Colors.white,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(0, 1),
                      )
                    ],
                  ),
                  child: const Image(
                    image: AssetImage('asset/logo.jpg'),
                    height: double.infinity,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Họ Và Tên",
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500)),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TextField(
              onChanged: (newString) {
                userName = newString;
              },
              keyboardType: TextInputType.name,
              style: const TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Họ Và Tên",
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500)),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TextField(
              onChanged: (newString) {
                userName = newString;
              },
              keyboardType: TextInputType.name,
              style: const TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Email ",
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500)),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TextField(
              onChanged: (newstringE) {
                userEmail = newstringE;
              },
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Địa Chỉ ",
                style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500)),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: TextField(
              onChanged: (newstringAdd) {
                userAddress = newstringAdd;
              },
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  Future.delayed(const Duration(seconds: 2), () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => changedetail_account()));
                  });
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
                child: Text('Chỉnh Sửa',
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
        ]),
      ))),
    );
  }
}
