// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/model/size_model.dart';
import 'package:oderfoodapp_flutter/state/food_detail_state.dart';
import 'package:oderfoodapp_flutter/state/food_list_state.dart';

class Food_Size_Widget extends StatelessWidget {
  
  const Food_Size_Widget({
    super.key,
    required this.foodListStateController,
    required this.foodDetailStateController,
  });

  final FoodListStateController foodListStateController;
  final FoodDetailStateController foodDetailStateController;

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Container(
          color: Colors.white,
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => ExpansionTile(
                  title: Text(
                    'Size',
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  children: foodListStateController
                      .selectedFood.value.size
                      .map((e) => RadioListTile<SizeModel>(
                            title: Text(
                              e.name,
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  color: Colors.black,
                                  ),
                            ),
                            activeColor: Colors.amber,
                            value: e,
                            groupValue:
                                foodDetailStateController
                                    .selectedSize.value,
                            onChanged: (value) =>
                                foodDetailStateController
                                    .selectedSize
                                    .value = value!,
                          ))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      );
  }
}