// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/screen/cart_detail_screen.dart';
import 'package:oderfoodapp_flutter/screen/homesrceen.dart';

class AnimotionFail extends StatelessWidget {
  const AnimotionFail({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          // title: Text('Flutter Spinkit Example'),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  'Success!!',
                  style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                  )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: SpinKitSquareCircleExample(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 70.0)),
                            textStyle: MaterialStateProperty.all(
                                const TextStyle(fontSize: 25)),
                            side: MaterialStateProperty.all(const BorderSide(
                                color: Colors.black, width: 1.0)),
                          ),
                          child: Text('Continue buying',
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 30,
                                  color: Colors.black,
                                ),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          // child: ElevatedButton(
                          //   onPressed: () {
                          //     Navigator.pushReplacement(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) =>  CartDetailScreen()),
                          //     );
                          //   },
                          //   style: ButtonStyle(
                          //     backgroundColor:
                          //         MaterialStateProperty.all(Colors.white),
                          //     padding: MaterialStateProperty.all(
                          //         const EdgeInsets.symmetric(
                          //             vertical: 20.0, horizontal: 85.0)),
                          //     textStyle: MaterialStateProperty.all(
                          //         const TextStyle(fontSize: 25)),
                          //     side: MaterialStateProperty.all(const BorderSide(
                          //         color: Colors.black, width: 1.0)),
                          //   ),
                          //   child: Text('Continue buying',
                          //       style: GoogleFonts.roboto(
                          //         textStyle: const TextStyle(
                          //           fontWeight: FontWeight.w900,
                          //           fontSize: 25,
                          //           color: Colors.black,
                          //         ),
                          //       )),
                          // ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 190),
                            child: TextButton(
                              onPressed: () {
                                 Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  CartDetailScreen()),
                                 );
                              },
                              child: Text(
                                'Go to back Home',
                                style: GoogleFonts.roboto(
                                    textStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.w300),
                                    
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SpinKitSquareCircleExample extends StatefulWidget {
  const SpinKitSquareCircleExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SpinKitSquareCircleExampleState createState() =>
      _SpinKitSquareCircleExampleState();
}

class _SpinKitSquareCircleExampleState extends State<SpinKitSquareCircleExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final spinkit = SpinKitPouringHourGlassRefined(
      color: Colors.black,
      size: 500.0,
      controller: _controller,
    );

    return spinkit;
  }
}
