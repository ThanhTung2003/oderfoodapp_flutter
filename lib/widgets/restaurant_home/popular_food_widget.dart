import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/model/popular_item_model.dart';
import 'package:oderfoodapp_flutter/state/main_state.dart';
import 'package:oderfoodapp_flutter/strings/restaurant_home_strings.dart';
import 'package:oderfoodapp_flutter/viewmodel/restaurant_home_vm.dart';
import 'package:oderfoodapp_flutter/widgets/common/common_widgets.dart';

class PopularFoodWidget extends StatelessWidget {
  const PopularFoodWidget({
    super.key,
    required this.viewModel,
    required this.mainStateController,
  });

  final RestaurantHomeViewModel viewModel;
  final MainStateController mainStateController;

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
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
                Expanded(
                  child: LiveList(
                    showItemDuration: const Duration(milliseconds: 350),
                    showItemInterval: const Duration(milliseconds: 150),
                    reAnimateOnVisibility: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: lstPopular.length,
                    itemBuilder: animationItemBuilder(
                      (index) => Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(lstPopular[index].image),
                              minRadius: 55,
                              maxRadius: 65,
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              lstPopular[index].name,
                              style: GoogleFonts.poppins(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}