import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/state/main_state.dart';
import 'package:oderfoodapp_flutter/strings/restaurant_home_strings.dart';
import 'package:oderfoodapp_flutter/viewmodel/restaurant_home_vm.dart';
import 'package:oderfoodapp_flutter/viewmodel/retaurant_home_vm_imp.dart';

class RestaurantHome extends StatelessWidget {
  final MainStateController mainStateController = Get.find();
  final RestaurantHomeViewModel viewModel = RestaurantHomeViewModelImp();

  RestaurantHome({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('${mainStateController.selectedRestaurant.value.name}'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  child: FutureBuilder(
                future: viewModel.displayMostPopularByRestaurantId(
                    mainStateController.selectedRestaurant.value.restaurantId),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting)
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  else {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mostPopularText,
                          style: GoogleFonts.jetBrainsMono(
                              fontWeight: FontWeight.w900,
                              fontSize: 24,
                              color: Colors.black45),
                        )
                      ],
                    );
                  }
                },
              )),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
