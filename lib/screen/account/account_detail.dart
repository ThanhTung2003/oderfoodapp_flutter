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
<<<<<<< HEAD:lib/screen/account/account_detail.dart
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
=======
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account Detail',
          style: GoogleFonts.roboto(
              textStyle:
                  const TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
        ),
        leading: const BackButton(),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: 750,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 200,
                      width: 200  ,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.blueGrey,
                          width: 2,
                        ),
>>>>>>> origin/Dat_Payment-2:lib/screen/account_detail.dart
                      ),
                      child: const CircleAvatar(
                        radius: 150,
                        backgroundImage: AssetImage('asset/jack.jpeg'),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Name",
                          style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ),
                    
                  ],
                ),
                Container(
                  height: 55,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    onChanged: (newString) {
                      userName = newString;
                    },
                    keyboardType: TextInputType.name,
                    style: const TextStyle(fontSize: 20),
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Phone",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    onChanged: (newString) {
                      userPhone = newString;
                    },
                    keyboardType: TextInputType.phone,
                    style: const TextStyle(fontSize: 20),
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Email ",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    onChanged: (newstringE) {
                      userEmail = newstringE;
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(fontSize: 20),
                    textAlignVertical: TextAlignVertical.center,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Address",
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500)),
                    ),
                  ),
                ),
                Container(
                  height: 55,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    onChanged: (newstringAdd) {
                      userAddress = newstringAdd;
                    },
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(fontSize: 20),
                    textAlignVertical: TextAlignVertical
                        .center, // Căn văn bản vào giữa theo chiều dọc
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        Future.delayed(const Duration(seconds: 2), () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => changedetail_account(),
                            ),
                          );
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 100.0,
                          ),
                        ),
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 25),
                        ),
                        side: MaterialStateProperty.all(
                          const BorderSide(color: Colors.black, width: 1.0),
                        ),
                      ),
                      child: Text(
                        'Edit',
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
<<<<<<< HEAD:lib/screen/account/account_detail.dart
        ]),
      ))),
=======
        ),
      ),
>>>>>>> origin/Dat_Payment-2:lib/screen/account_detail.dart
    );
  }
}
