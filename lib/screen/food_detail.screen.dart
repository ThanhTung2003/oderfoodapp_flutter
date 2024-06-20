import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/state/category_state.dart';
import 'package:oderfoodapp_flutter/state/food_detail_state.dart';
import 'package:oderfoodapp_flutter/state/food_list_state.dart';
import 'package:oderfoodapp_flutter/widgets/food_detail/food_detail_description.dart';
import 'package:oderfoodapp_flutter/widgets/food_detail/food_detail_image.dart';
import 'package:oderfoodapp_flutter/widgets/food_detail/food_detail_name.dart';

class FoodListDetailScreen extends StatelessWidget {
  FoodListDetailScreen({super.key});

  final CategoryStateController categoryStateController = Get.find();
  final FoodListStateController foodListStateController = Get.find();
  final FoodDetailStateController foodDetailStateController = Get.put(FoodDetailStateController());

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
                  child: FoodDetailImageWidget(
                      foodListStateController: foodListStateController),
                ),
              )
            ];
          },
          body: Container(
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FoodDetailNameWidget(
                  foodDetailStateController: foodDetailStateController,
                    foodListStateController: foodListStateController),
                FoodDetailDescriptionWidget(foodListStateController: foodListStateController)
              ],
            ),
          ),
        ),
      ),
    );
  }
}


