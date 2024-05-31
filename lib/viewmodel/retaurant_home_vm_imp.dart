import 'package:oderfoodapp_flutter/firebase/popular_refenrence.dart';
import 'package:oderfoodapp_flutter/model/popular_item_model.dart';
import 'package:oderfoodapp_flutter/viewmodel/restaurant_home_vm.dart';

class RestaurantHomeViewModelImp implements RestaurantHomeViewModel{
  @override
  Future<List<PopularItemModel>> displayMostPopularByRestaurantId(String restaurantId) {
    return getMostPopularByRestaurantId(restaurantId);
  }
  
  
}