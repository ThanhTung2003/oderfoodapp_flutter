import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:oderfoodapp_flutter/const/const.dart';
import 'package:oderfoodapp_flutter/state/food_list_state.dart';

class FoodDetailImageWidget extends StatelessWidget {
  const FoodDetailImageWidget({
    super.key,
    required this.foodListStateController,
  });

  final FoodListStateController foodListStateController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity, //max chieu rong
          height: (MediaQuery.of(context).size.height / 3) * 0.95,
          child: 
          Hero(tag:foodListStateController.selectedFood.value.name ,
          child: CachedNetworkImage(
            imageUrl:
                foodListStateController.selectedFood.value.image,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) => const Center(
              child: Icon(Icons.image),
            ),
            progressIndicatorBuilder: (context, url,
                    downloadProgress) =>
                const Center(child: CircularProgressIndicator()),
          ),) 
        ),
        Align(
          alignment: const Alignment(0.8, 1.0),
          heightFactor: 0.5,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  heroTag: FAB_FAV_TAG,
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  elevation: 10,
                  child: const Icon(
                    Icons.favorite_border,
                    color: Colors.amber,),
                ),
                FloatingActionButton(
                  heroTag: FAB_CART_TAG,
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  elevation: 10,
                  child: const Icon(
                    Icons.add_shopping_cart,
                    color: Colors.amber,),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}