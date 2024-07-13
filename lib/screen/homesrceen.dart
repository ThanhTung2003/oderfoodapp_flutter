import 'package:flutter/material.dart';
import 'package:oderfoodapp_flutter/widgets/HomeFood/discount_widget_HomeFood.dart';
import 'package:oderfoodapp_flutter/widgets/HomeFood/ItemSrcoll_homefood.dart';
import 'package:oderfoodapp_flutter/widgets/HomeFood/Popular_widget_homefood.dart';
import 'package:oderfoodapp_flutter/widgets/HomeFood/appbar_homefood.dart';

class MyColors {
  static const Color color1 = Color(0xFF46289C); // Màu #46289C
  static const Color color2 = Color(0xFF7A6AA6);
  static const Color color = Color(0x00f1f1f1); // Màu #7A6AA6
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const appbar_homefood(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: SearchAnchor(
                builder: (BuildContext context, SearchController controller) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 40,
                    child: SearchBar(
                      controller: controller,
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.symmetric(horizontal: 16.0),
                      ),
                      onTap: () {
                        controller.openView();
                      },
                      onChanged: (_) {
                        controller.openView();
                      },
                      leading: const Icon(Icons.search),
                    ),
                  );
                },
                suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
                  return List<ListTile>.generate(5, (int index) {
                    final String item = 'item $index';
                    return ListTile(
                      title: Text(item),
                      onTap: () {
                        // setState(() {
                        //   controller.closeView(item);
                        // });
                      },
                    );
                  });
                },
              ),
            ),
          ),
          const itemSrcollHomeFood(),
          const discountWidgetHomeFood(),
          const Align(
            alignment: Alignment.bottomLeft,
            child: popular_widget_homefood(),
          ),
        ],
      ),
    );
  }
}
