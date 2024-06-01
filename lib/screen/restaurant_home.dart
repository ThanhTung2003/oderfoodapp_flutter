import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/state/main_state.dart';
import 'package:oderfoodapp_flutter/viewmodel/restaurant_home_vm.dart';
import 'package:oderfoodapp_flutter/viewmodel/retaurant_home_vm_imp.dart';
import 'package:oderfoodapp_flutter/widgets/restaurant_home/best_deals_widget.dart';
import 'package:oderfoodapp_flutter/widgets/restaurant_home/popular_food_widget.dart'; // To use ImageFilter

class RestaurantHome extends StatelessWidget {
  final MainStateController mainStateController = Get.find();
  final RestaurantHomeViewModel viewModel = RestaurantHomeViewModelImp();

  RestaurantHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '${mainStateController.selectedRestaurant.value.name}',
            style: GoogleFonts.jetBrainsMono(color: Colors.black, fontWeight: FontWeight.w900),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 10,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Container(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: PopularFoodWidget(viewModel: viewModel, mainStateController: mainStateController),
              ),
              Expanded(
                flex: 2,
                child: BestDealsWidget(viewModel: viewModel, mainStateController: mainStateController),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




