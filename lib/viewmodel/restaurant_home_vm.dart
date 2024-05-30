import 'package:oderfoodapp_flutter/model/popular_item_model.dart';

abstract class RestaurantHomeViewModel{
  Future<List<PopularItemModel>> displayMostPopularByRestaurantId(
    String restaurantId
  );
}