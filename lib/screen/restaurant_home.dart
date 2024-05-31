import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/model/popular_item_model.dart';
import 'package:oderfoodapp_flutter/state/main_state.dart';
import 'package:oderfoodapp_flutter/strings/restaurant_home_strings.dart';
import 'package:oderfoodapp_flutter/viewmodel/restaurant_home_vm.dart';
import 'package:oderfoodapp_flutter/viewmodel/retaurant_home_vm_imp.dart';
import 'package:oderfoodapp_flutter/widgets/common/common_widgets.dart';

class RestaurantHome extends StatelessWidget {
  final MainStateController mainStateController = Get.find();
  final RestaurantHomeViewModel viewModel = RestaurantHomeViewModelImp();

  RestaurantHome({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('${mainStateController.selectedRestaurant.value.name}',
        style: GoogleFonts.jetBrainsMono(color: Colors.black,fontWeight:FontWeight.w900),),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 10,
        iconTheme: const IconThemeData(
          color: Colors.black
        ),
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
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    var lstPopular = snapshot.data as List<PopularItemModel>;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          mostPopularText,
                          style: GoogleFonts.jetBrainsMono(
                              fontWeight: FontWeight.w900,
                              fontSize: 24,
                              color: Colors.black45),
                        ),
                        Expanded(child: LiveList(
                          showItemDuration: const Duration(milliseconds: 350),
                          showItemInterval: const Duration(milliseconds: 150),
                          reAnimateOnVisibility: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: lstPopular.length,
                          itemBuilder: animationItemBuilder((index) =>Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(lstPopular[index].image),
                                minRadius: 40,
                                maxRadius: 50,
                              ),
                              const SizedBox(height: 10,),
                              Text(lstPopular[index].name,
                              style: GoogleFonts.jetBrainsMono(),)
                            ],),
                          )),
                        )
                    )],
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
