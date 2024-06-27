import 'package:auto_animated/auto_animated.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/const/const.dart';
import 'package:oderfoodapp_flutter/screen/food_detail.screen.dart';
import 'package:oderfoodapp_flutter/state/cart_state.dart';
import 'package:oderfoodapp_flutter/state/category_state.dart';
import 'package:oderfoodapp_flutter/state/food_list_state.dart';
import 'package:oderfoodapp_flutter/widgets/common/appbar_cart_widget.dart';
import 'package:oderfoodapp_flutter/widgets/common/common_widgets.dart';

class FoodListScreen extends StatelessWidget {
  FoodListScreen({super.key});

  final FoodListStateController foodListStateController =
      Get.put(FoodListStateController());
  final CategoryStateController categoryStateController = Get.find();
  final CartStateController cartStateController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCartButton(
        title: categoryStateController.selectedCategory.value.name,
      ),
      body: Column(
        children: [
          Expanded(
            child: LiveList(
              showItemDuration: const Duration(milliseconds: 300),
              showItemInterval: const Duration(milliseconds: 300),
              reAnimateOnVisibility: true,
              scrollDirection: Axis.vertical,
              itemCount:
                  categoryStateController.selectedCategory.value.foods.length,
              itemBuilder: animationItemBuilder(
                (index) => InkWell(
                  onTap: () {
                    foodListStateController.selectedFood.value =
                        categoryStateController
                            .selectedCategory.value.foods[index];
                    Get.to(() => FoodListDetailScreen());
                  },
                  child: Hero(
                    tag: categoryStateController
                        .selectedCategory.value.foods[index].name,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 3,
                      child: Card(
                        color: Colors.white, //SOS
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Stack(
                          children: [
                            CachedNetworkImage(
                              imageUrl: categoryStateController
                                  .selectedCategory.value.foods[index].image,
                              fit: BoxFit.cover,
                              errorWidget: (context, url, error) =>
                                  const Center(
                                child: Icon(Icons.image),
                              ),
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      const Center(
                                          child: CircularProgressIndicator()),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                color: const Color(COLOR_OVERPLAY),
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        categoryStateController.selectedCategory
                                            .value.foods[index].name,
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'Giá: ${categoryStateController.selectedCategory.value.foods[index].price} vnđ',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.roboto(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.favorite_border,
                                                color: Colors.white,
                                              )),
                                          const SizedBox(
                                            width: 50,
                                          ),
                                          IconButton(
                                              onPressed: () =>
                                                  cartStateController.addToCart(
                                                      categoryStateController
                                                          .selectedCategory
                                                          .value
                                                          .foods[index]),
                                              icon: const Icon(
                                                Icons
                                                    .add_shopping_cart_outlined,
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
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
