import 'package:flutter/material.dart';
import 'package:oderfoodapp_flutter/screen/account_screen.dart';


class appbar_homefood extends StatelessWidget {
  const appbar_homefood({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topLeft, 
            child: GestureDetector(
              onTap: () {
                
              },
              child: const Text(
                'Menu',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          IconButton(
            padding: const EdgeInsets.only(left: 10),
            icon: ClipOval(
              child: Image.asset(
                'asset/logo.jpg',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SrceenAccount()),
              );
            },
          ),
        ],
      ),
    );
  }
}
