import 'package:flutter/material.dart';
import 'package:oderfoodapp_flutter/main.dart';
import 'package:oderfoodapp_flutter/screen/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.color1,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Đăng Nhập',
          style:  TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [MyColors.color1, MyColors.color2],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
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
                        color: Colors.white,
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
                        color: Colors.white,
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
                        color: Colors.white,
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
                        color: Colors.white,
                      ),
                      labelText: 'Mật khẩu',
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
                              // ignore: prefer_const_constructors
                              MaterialPageRoute(builder: (context) =>  NavigationMenu()),
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
                            side: MaterialStateProperty.all(
                                const BorderSide(color: Colors.black, width: 1.0)),
                          ),
                          child: const Text(
                            'Đăng Nhập',
                            style: TextStyle(
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
                        child: const Text(
                          'New Account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            decoration: TextDecoration.underline,
                          ),
                        ),
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
