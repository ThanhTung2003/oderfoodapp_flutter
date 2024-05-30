import 'package:firebase_database/firebase_database.dart';
import 'package:oderfoodapp_flutter/const/const.dart';
import 'package:oderfoodapp_flutter/model/restaurant_model.dart';

class MainViewModelImp {
  Future<List<RestaurantModel>> displayRestaurantList() async {
    var list = List<RestaurantModel>.empty(growable: true);

    DatabaseEvent event = await FirebaseDatabase.instance.ref().child(RESTAURANT_REF).once();
    DataSnapshot snapshot = event.snapshot;

    if (snapshot.exists && snapshot.value != null) {
      Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;
      values.forEach((key, value) {
        var restaurantModel = RestaurantModel.fromJson(Map<String, dynamic>.from(value));
        if (restaurantModel.name.isNotEmpty) {  // Check if name is not empty
          restaurantModel.restaurantId = key;
          list.add(restaurantModel);
        }
      });
    }

    return list;
  }
}
