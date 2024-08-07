import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oderfoodapp_flutter/screen/account/account_screen.dart';

// ignore: camel_case_types
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
            color: Colors.white,
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () {},
              child: Text(
                "menu".tr(),
                textAlign: TextAlign.left,
                style: const TextStyle(
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
                'asset/ben.jpg',
                height: 50,
                width: 50,
                fit: BoxFit.cover,
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
    );
  }
}
