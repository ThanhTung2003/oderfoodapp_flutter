// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';



class MyColors {
  static  Color color1 = const Color(0xFF46289C); // Màu #46289C
  static  Color color2 = const Color(0xFF7A6AA6); 
  static  Color color3 = const Color(0xFFB1A538);// Màu #7A6AA6
    // static const Color color3 = Color(0x644AB5);//Màu #644AB5
}
// ignore: camel_case_types
class popular_widget_homefood extends StatelessWidget{
  const popular_widget_homefood({super.key});

  @override
  Widget build(BuildContext context) {
   
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:
       Padding(
        padding:const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      child: Row(
       crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          
          Padding(padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Container(
            width: 150,
            height: 205,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ]
            ),
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 5),
            
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
              alignment: Alignment.center,
              child: Image.asset('asset/burger.png',height: 115,
              ),
             ),
             const Text("Hamburger",       
             style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              ),
             ),
             const SizedBox(height: 1),
             const Text("Taste our burger",
             style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              ),
             ),
             const SizedBox(height: 5),
             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Text('10.000',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17
                  ),
                ),
                Icon(Icons.add,
                size: 26,
                color:Color(0xFFB1A538) ,
                )
                
              ],
             )
            ],
           ),
            ),
          ),
          ),
           Padding(padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Container(
            width: 150,
            height: 205,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ]
            ),
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 5),
            
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
              alignment: Alignment.center,
              child: Image.asset('asset/burger.png',height: 115,
              ),
             ),
             const Text("Hamburger",       
             style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              ),
             ),
             const SizedBox(height: 1),
             const Text("Taste our burger",
             style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              ),
             ),
             const SizedBox(height: 5),
             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Text('10.000',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17
                  ),
                ),
                Icon(Icons.add,
                size: 26,
                color:Color(0xFFB1A538) ,
                )
                
              ],
             )
            ],
           ),
            ),
          ),
          
          ),
           Padding(padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Container(
            width: 150,
            height: 205,
            decoration: BoxDecoration(
               color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ]
            ),
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 5),
            
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
              alignment: Alignment.center,
              child: Image.asset('asset/burger.png',height: 115,
              ),
             ),
             const Text("Hamburger",       
             style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              ),
             ),
             const SizedBox(height: 1),
             const Text("Taste our burger",
             style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              ),
             ),
             const SizedBox(height: 5),
             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Text('10.000',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17
                  ),
                ),
                Icon(Icons.add,
                size: 26,
                color:Color(0xFFB1A538) ,
                )
                
              ],
             )
            ],
           ),
            ),
          ),
          
          ),
           Padding(padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Container(
            width: 150,
            height: 205,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ]
            ),
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 5),
            
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
              alignment: Alignment.center,
              child: Image.asset('asset/burger.png',height: 115,
              ),
             ),
             const Text("Hamburger",       
             style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              ),
             ),
             const SizedBox(height: 1),
             const Text("Taste our burger",
             style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              ),
             ),
             const SizedBox(height: 5),
             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Text('10.000',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17
                  ),
                ),
                Icon(Icons.add,
                size: 26,
                color:Color(0xFFB1A538) ,
                )
                
              ],
             )
            ],
           ),
            ),
          ),
          ),
           Padding(padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Container(
            width: 150,
            height: 205,
            decoration: BoxDecoration(
             color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ]
            ),
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 5),
            
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             Container(
              alignment: Alignment.center,
              child: Image.asset('asset/burger.png',height: 115,
              ),
             ),
             const Text("Hamburger",       
             style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              ),
             ),
             const SizedBox(height: 1),
             const Text("Taste our burger",
             style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              ),
             ),
             const SizedBox(height: 5),
             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Text('10.000',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 17
                  ),
                ),
                Icon(Icons.add,
                size: 26,
                color:Color(0xFFB1A538) ,
                )
                
              ],
             )
            ],
           ),
            ),
          ),
          )
      ],),
      ),
    );
  }
}
