import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/model/popular_item_model.dart';
import 'package:oderfoodapp_flutter/state/main_state.dart';
import 'package:oderfoodapp_flutter/viewmodel/restaurant_home_vm.dart';

class BestDealsWidget extends StatelessWidget {
  const BestDealsWidget({
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
        future: viewModel.displayBestDealsByRestaurantId(
            mainStateController.selectedRestaurant.value.restaurantId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            var lstBestDeals = snapshot.data as List<PopularItemModel>;
            return CarouselSlider(
              items: lstBestDeals.map((e) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Stack(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: double.infinity,
                              child: CachedNetworkImage(
                                imageUrl: e.image,
                                fit: BoxFit.cover,
                                errorWidget: (context, url, error) => const Center(
                                  child: Icon(Icons.image),
                                ),
                                progressIndicatorBuilder: (context, url, downloadProgress) =>
                                    const Center(child: CircularProgressIndicator()),
                              ),
                            ),
                            Center(
                              child: Text(
                                e.name,
                                style: GoogleFonts.poppins(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                autoPlay: true,
                autoPlayAnimationDuration: const Duration(seconds: 2),
                autoPlayCurve: Curves.easeIn,
                height: double.infinity,
              ),
            );
          }
        },
      ),
    );
  }
}