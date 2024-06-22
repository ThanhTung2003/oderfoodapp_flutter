import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/state/food_list_state.dart';

class FoodDetailDescriptionWidget extends StatelessWidget {
  const FoodDetailDescriptionWidget({
    super.key,
    required this.foodListStateController,
  });

  final FoodListStateController foodListStateController;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12,
      color: Colors.white,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RatingBar.builder(
                  initialRating: 5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemBuilder: (context, _) {
                    return const Icon(Icons.star_rate, color: Colors.amber);
                  },
                  onRatingUpdate: (value) {},
                ),
                const SizedBox(height: 10,),
                Text(
                  foodListStateController.selectedFood.value.description,
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

double rating = 0.0;