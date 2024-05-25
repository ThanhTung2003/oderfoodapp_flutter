import 'package:oderfoodapp_flutter/firebase/restaurant_reference.dart';
import 'package:oderfoodapp_flutter/model/restaurant_model.dart';

import 'main_view_model.dart';

class MainViewModelImp implements MainViewModel{
  @override
  Future<List<RestaurantModel>> displayRestaurantList() {
   return getRestaurantList();
  }

}