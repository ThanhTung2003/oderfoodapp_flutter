import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/screen/log_in.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: MyColors.color1,
        elevation: 0,
        centerTitle: true,
        title: Text("Sign up_title".tr(),
            textAlign: TextAlign.left,
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            )),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                // gradient: LinearGradient(
                //   colors: [MyColors.color1, MyColors.color2],
                //   begin: Alignment.topCenter,
                //   end: Alignment.bottomCenter,
                // ),
                ),
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: ClipOval(
                    child: Image.asset(
                      'asset/logo.jpg',
                      height: 300,
                      width: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 7.0, horizontal: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.account_circle,
                        color: Colors.black,
                        size: 35,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 3.0,
                        ),
                      ),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                      ),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 7.0, horizontal: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.key,
                        color: Colors.black,
                        size: 35,
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 10.0,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelStyle: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                      labelText: 'pass'.tr(),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 7.0, horizontal: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.key,
                        color: Colors.black,
                        size: 35,
                      ),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 10.0,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelStyle: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                      labelText: 'en_pass'.tr(),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 7.0, horizontal: 5.0),
                  margin: const EdgeInsets.symmetric(horizontal: 70.0),
                  child: SizedBox(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  const LoginScreen()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 20.0)),
                        textStyle: MaterialStateProperty.all(
                            const TextStyle(fontSize: 25)),
                        side: MaterialStateProperty.all(
                            const BorderSide(color: Colors.black, width: 1.0)),
                      ),
                      child:  Text(
                        'Sign up'.tr(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyColors {
  static const Color color1 = Color(0xFF46289C); // Màu #46289C
  static const Color color2 = Color(0xFF7A6AA6); // Màu #7A6AA6
}
