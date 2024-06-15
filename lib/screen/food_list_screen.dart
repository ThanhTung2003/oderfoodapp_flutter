import 'package:auto_animated/auto_animated.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
                itemCount:
                    categoryStateController.selectedCategory.value.foods.length,
                itemBuilder: animationItemBuilder((index) => InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 6 * 2,
                      child: Card(
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
                            Container(
                              color: const Color(
                                  COLOR_OVERPLAY), // Applying ARGB overlay color
                            ),
                            Center(
                              child: Text(
                                categoryStateController
                                    .selectedCategory.value.foods[index].name,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ))),
              ),
            )
          ],
        ));
  }
}
