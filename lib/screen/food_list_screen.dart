import 'package:auto_animated/auto_animated.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/const/const.dart';
import 'package:oderfoodapp_flutter/state/category_state.dart';
import 'package:oderfoodapp_flutter/widgets/common/common_widgets.dart';

class FoodListScreen extends StatelessWidget {
  FoodListScreen({super.key});

  // final viewmodel = CategoryViewModelImp();
  final CategoryStateController categoryStateController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryStateController.selectedCategory.value.name,
          style: GoogleFonts.poppins(color: Colors.black),
        ),
        elevation: 10,
        backgroundColor: const Color(0xFFA696D6),
        foregroundColor: const Color(0xFF644AB5),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Expanded(
            child: LiveList(
              showItemDuration: const Duration(milliseconds: 300),
              showItemInterval: const Duration(milliseconds: 300),
              reAnimateOnVisibility: true,
              scrollDirection: Axis.vertical,
              itemCount: categoryStateController.selectedCategory.value.foods.length,
              itemBuilder: animationItemBuilder((index) => InkWell(
                onTap: () {},
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Stack(
                      children: [
                        CachedNetworkImage(
                          imageUrl: categoryStateController.selectedCategory.value.foods[index].image,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) => const Center(
                            child: Icon(Icons.image),
                          ),
                          progressIndicatorBuilder: (context, url, downloadProgress) =>
                              const Center(child: CircularProgressIndicator()),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            color: const Color(COLOR_OVERPLAY),
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10, bottom: 10),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    categoryStateController.selectedCategory.value.foods[index].name,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Giá: ${categoryStateController.selectedCategory.value.foods[index].price} vnđ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(onPressed: (){},
                                       icon: const Icon(
                                        Icons.favorite_border,
                                        color: Colors.white,
                                       )),
                                      const SizedBox(width:50,), 
                                      IconButton(onPressed: (){},
                                       icon: const Icon(
                                        Icons.add_shopping_cart_outlined,
                                        color: Colors.white,
                                       )),
                                    ],

                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
