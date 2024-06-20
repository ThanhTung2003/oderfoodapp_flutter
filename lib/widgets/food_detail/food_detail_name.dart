import 'package:flutter/material.dart';
import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/state/food_detail_state.dart';
import 'package:oderfoodapp_flutter/state/food_list_state.dart';

class FoodDetailNameWidget extends StatelessWidget {
  const FoodDetailNameWidget({
    super.key,
    required this.foodListStateController,
    required this.foodDetailStateController,
  });

  final FoodListStateController foodListStateController;
  final FoodDetailStateController foodDetailStateController;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                foodListStateController.selectedFood.value.name,
                style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Giá: ${foodListStateController.selectedFood.value.price} VND',
                    style: GoogleFonts.roboto(
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Obx(
                    () => ElegantNumberButton(
                      initialValue:
                          foodDetailStateController.quantity.value,
                      buttonSizeHeight: 25,
                      buttonSizeWidth: 25,
                      textStyle: GoogleFonts.roboto(),
                      minValue: 1,
                      maxValue: 99,
                      color: Colors.grey,
                      onChanged: (value) {
                      foodDetailStateController.quantity.value = value.toInt();
                      },
                      decimalPlaces: 0,
                    ),
                  )
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}