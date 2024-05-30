import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oderfoodapp_flutter/state/main_state.dart';
import 'package:oderfoodapp_flutter/viewmodel/restaurant_home_vm/restauran_home_vm.dart';
import 'package:oderfoodapp_flutter/viewmodel/restaurant_home_vm/restauran_home_vm_imp.dart';

class RestaurantHome extends StatelessWidget {
  final MainStateController mainStateController = Get.find();
  final RestaurantHomeViewModel viewModel = RestaurantHomeViewModelImp();

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
                child: Container(color: Colors.blue,)
                ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
