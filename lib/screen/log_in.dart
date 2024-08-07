import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oderfoodapp_flutter/screen/register_screen.dart';
import 'package:oderfoodapp_flutter/main.dart'; // Chắc chắn rằng import này là đúng

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "login_title".tr(),
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(),
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 4.0, // Độ rộng của viền trắng
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 150, // Điều chỉnh bán kính theo ý bạn
                      backgroundImage: AssetImage('asset/logo.jpg'),
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
                      labelText: "pass".tr(),
                    ),
                  ),
                ),
              
                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 7.0, horizontal: 5.0),
                  margin: const EdgeInsets.symmetric(horizontal: 70.0),
                  child: Column(
                    children: [
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NavigationMenu()),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 60.0)),
                            textStyle: MaterialStateProperty.all(
                                const TextStyle(fontSize: 25)),
                            side: MaterialStateProperty.all(const BorderSide(
                                color: Colors.black, width: 1.0)),
                          ),
                          child:  Text(
                          "login".tr(), 
                            style: const TextStyle(
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen()),
                          );
                        },
                        child: Text( "newacc".tr(),
                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 18.0,
                                decoration: TextDecoration.underline,
                              ),
                            )),
                      ),
                    ],
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
