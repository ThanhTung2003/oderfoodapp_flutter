import 'package:flutter/material.dart';
import 'package:oderfoodapp_flutter/widgets/HomeFood/Discount_widget_HomeFood.dart';
import 'package:oderfoodapp_flutter/widgets/HomeFood/ItemSrcoll_homefood.dart';
import 'package:oderfoodapp_flutter/widgets/HomeFood/Popular_widget_homefood.dart';
import 'package:oderfoodapp_flutter/widgets/HomeFood/appbar_homefood.dart';

class MyColors {
  static const Color color1 = Color(0xFF46289C); // Màu #46289C
  static const Color color2 = Color(0xFF7A6AA6);
  static const Color color = Color(0xF1F1F1); // Màu #7A6AA6
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home,
      //         color: Colors.black,
      //         size: 25,
      //       ),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Padding(
      //         padding: EdgeInsets.only(right: 30),
      //         child: Icon(
      //           Icons.search_sharp,
      //           color: Colors.black,
      //           size: 25,
      //         ),
      //       ),
      //       label: 'Search',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.shopping_cart,
      //         color: Colors.black,
      //         size: 25,
      //       ),
      //       label: 'Cart',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.account_circle,
      //         color: Colors.black,
      //         size: 25,
      //       ),
      //       label: 'Profile',
      //     ),
      //   ],
      // ),
      body: ListView(
        
        children: [
          appbar_homefood(),
          Padding(
            padding: EdgeInsets.all(8.0),
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
          ItemSrcollHomeFood(),
          DiscountWidgetHomeFood(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              child: 
              Popular_widget_homefood(),
            ), 
          ),
        ],
      ),
    );
  }
}