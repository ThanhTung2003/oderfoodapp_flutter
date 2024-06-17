import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/state/category_state.dart';
import 'package:oderfoodapp_flutter/state/food_list_state.dart';

class FoodListDetailScreen extends StatelessWidget {
  FoodListDetailScreen({super.key});

  final CategoryStateController categoryStateController = Get.find();
  final FoodListStateController foodListStateController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: Text(
                  foodListStateController.selectedFood.value.name,
                  style: GoogleFonts.jetBrainsMono(color: Colors.black),
                ),
                elevation: 10,
                backgroundColor: Colors.white,
                iconTheme: const IconThemeData(color: Colors.black),
                foregroundColor: Colors.black,
                bottom: PreferredSize(
                  preferredSize:
                      Size.square(MediaQuery.of(context).size.height / 3),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity, //max chieu rong
                        height: (MediaQuery.of(context).size.height / 3) * 0.95,
                        child: CachedNetworkImage(
                          imageUrl: foodListStateController
                              .selectedFood.value.image,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) => const Center(
                            child: Icon(Icons.image),
                          ),
                          progressIndicatorBuilder: (context, url,
                                  downloadProgress) =>
                              const Center(child: CircularProgressIndicator()),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container(),
        ),
      ),
    );
  }
}
