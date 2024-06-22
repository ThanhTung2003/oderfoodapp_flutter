import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/state/food_detail_state.dart';
import 'package:oderfoodapp_flutter/state/food_list_state.dart';

class FoodTopping extends StatelessWidget {
  const FoodTopping({
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
                    'Topping',
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  children: [
                    Wrap(
                      children: foodListStateController
                          .selectedFood.value.addon
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.all(8),
                              child: ChoiceChip(
                                label: Text(e.name),
                                selected:
                                    foodDetailStateController
                                        .selectedAddon
                                        .contains(e),
                                        selectedColor: Colors.amber,
                                onSelected: (selected) {
                                  if (selected) {
                                    foodDetailStateController
                                        .selectedAddon
                                        .add(e);
                                  } else {
                                    foodDetailStateController
                                        .selectedAddon
                                        .remove(e);
                                  }
                                },
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
  }
}