import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyColors {
  static Color color1 = const Color(0xFF46289C); // Màu #46289C
  static Color color2 = const Color(0xFF7A6AA6);
  static Color color3 = const Color(0xFFB1A538); // Màu #7A6AA6
  static const Color color4 = Color(0xFFD9D9D9); //Màu #644AB5
   static const Color color5 = Color(0xFF53871F); 
}

class widget_detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: MyColors.color4,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              ),
                            ]),
                           
                        child: Image.asset(
                          'asset/burger.png',
                          alignment: Alignment.topCenter,
                          height: 150,
                          width: 140,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 15,
                        child:Container(
                      child:  Text(
                        "Hamburger",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                     ), 
                        ),
                      Positioned(
                        right: -20,
                        bottom: -8,
                        child: Container(
                          height: 35,
                          width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: MyColors.color5,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                                  ),
                                ]),
                            child: IconButton(
                              icon:  Icon(Icons.add),
                              iconSize: 20,
                              color: Color(0xFFB1A538),
                              onPressed: () {},
                            )),
                      )
                    ],
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: MyColors.color4,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              ),
                            ]),
                           
                        child: Image.asset(
                          'asset/burger.png',
                          alignment: Alignment.topCenter,
                          height: 150,
                          width: 140,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 15,
                        child:Container(
                      child:  Text(
                        "Hamburger",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                     ), 
                        ),
                      Positioned(
                        right: -20,
                        bottom: -8,
                        child: Container(
                          height: 35,
                          width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: MyColors.color5,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                                  ),
                                ]),
                            child: IconButton(
                              icon:  Icon(Icons.add),
                              iconSize: 20,
                              color: Color(0xFFB1A538),
                              onPressed: () {},
                            )),
                      )
                    ],
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: MyColors.color4,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              ),
                            ]),
                           
                        child: Image.asset(
                          'asset/burger.png',
                          alignment: Alignment.topCenter,
                          height: 150,
                          width: 140,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 15,
                        child:Container(
                      child:  Text(
                        "Hamburger",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                     ), 
                        ),
                      Positioned(
                        right: -20,
                        bottom: -8,
                        child: Container(
                          height: 35,
                          width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: MyColors.color5,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                                  ),
                                ]),
                            child: IconButton(
                              icon:  Icon(Icons.add),
                              iconSize: 20,
                              color: Color(0xFFB1A538),
                              onPressed: () {},
                            )),
                      )
                    ],
                  ),
                ),
                 Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12,vertical: 0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: MyColors.color4,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.3),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0, 3),
                              ),
                            ]),
                           
                        child: Image.asset(
                          'asset/burger.png',
                          alignment: Alignment.topCenter,
                          height: 150,
                          width: 140,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        right: 15,
                        child:Container(
                      child:  Text(
                        "Hamburger",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                     ), 
                        ),
                      Positioned(
                        right: -20,
                        bottom: -8,
                        child: Container(
                          height: 35,
                          width: 35,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: MyColors.color5,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 10,
                                    offset: Offset(0, 3),
                                  ),
                                ]),
                            child: IconButton(
                              icon:  Icon(Icons.add),
                              iconSize: 20,
                              color: Color(0xFFB1A538),
                              onPressed: () {},
                            )),
                      )
                    ],
                  ),
                ),
                
              ],
            )));

//        Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(20),
//                   color: MyColors.color4,
//                   boxShadow: [
//                 BoxShadow(
//                 color: Colors.white.withOpacity(0.3),
//                 spreadRadius: 3,
//                 blurRadius: 10,
//                 offset: Offset(0, 3),
//                 ),
//               ]
//                 ),
//                 child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
//                 child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                          Container(
//             alignment: Alignment.center,
//             child: Image.asset('asset/burger.png',height: 100,width: 100,
//             ),
//                          ),
//                          Text("Hamburger",
//                          style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.w900,
//             ),
//                          ),
//                          SizedBox(height: 1),
//                          Text("Taste our burger",
//                          style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.bold,
//             ),
//                          ),
//                          SizedBox(height: 5),
//                          Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [

//               Text('10.000',
//               textAlign: TextAlign.start,
//               style: TextStyle(
//                 fontSize: 17
//                 ),
//               ),
//               Icon(Icons.add,
//               size: 26,
//               color:Color(0xFFB1A538) ,
//               )
//             ],
//                          )
//                         ],
//                        ),
//                 ),
//               ),
//           ),
//        Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(20),
//                   color: MyColors.color4,
//                   boxShadow: [
//                 BoxShadow(
//                 color: Colors.white.withOpacity(0.3),
//                 spreadRadius: 3,
//                 blurRadius: 10,
//                 offset: Offset(0, 3),
//                 ),
//               ]
//                 ),
//                 child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
//                 child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                          Container(
//             alignment: Alignment.center,
//             child: Image.asset('asset/burger.png',height: 100,width: 100,
//             ),
//                          ),
//                          Text("Hamburger",
//                          style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.w900,
//             ),
//                          ),
//                          SizedBox(height: 1),
//                          Text("Taste our burger",
//                          style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.bold,
//             ),
//                          ),
//                          SizedBox(height: 5),
//                          Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [

//               Text('10.000',
//               textAlign: TextAlign.start,
//               style: TextStyle(
//                 fontSize: 17
//                 ),
//               ),
//               Icon(Icons.add,
//               size: 26,
//               color:Color(0xFFB1A538) ,
//               )
//             ],
//                          )
//                         ],
//                        ),
//                 ),
//               ),
//           ),
//        Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               decoration: BoxDecoration(
//                  borderRadius: BorderRadius.circular(20),
//                   color: MyColors.color4,
//                   boxShadow: [
//                 BoxShadow(
//                 color: Colors.white.withOpacity(0.3),
//                 spreadRadius: 3,
//                 blurRadius: 10,
//                 offset: Offset(0, 3),
//                 ),
//               ]
//                 ),
//                 child: Padding(padding: EdgeInsets.symmetric(horizontal: 10),
//                 child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                          Container(
//             alignment: Alignment.center,
//             child: Image.asset('asset/burger.png',height: 100,width: 100,
//             ),
//                          ),
//                          Text("Hamburger",
//                          style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.w900,
//             ),
//                          ),
//                          SizedBox(height: 1),
//                          Text("Taste our burger",
//                          style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.bold,
//             ),
//                          ),
//                          SizedBox(height: 5),
//                          Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [

//               Text('10.000',
//               textAlign: TextAlign.start,
//               style: TextStyle(
//                 fontSize: 17
//                 ),
//               ),
//               Icon(Icons.add,
//               size: 26,
//               color:Color(0xFFB1A538) ,
//               )
//             ],
//                          )
//                         ],
//                        ),
//                 ),
//               ),
//           ),
  }
}
