import 'dart:convert';
import 'package:firebase_database/firebase_database.dart';
import 'package:oderfoodapp_flutter/const/const.dart';
import 'package:oderfoodapp_flutter/model/popular_item_model.dart';

Future<List<PopularItemModel>> getBestDealsByRestaurantId(String restaurantId) async {
  var list = List<PopularItemModel>.empty(growable: true);
  var event =
  await FirebaseDatabase.instance.ref().child(RESTAURANT_REF)
  .child(restaurantId)
  .child(BEST_DEALS_REF)
  .once();
  Map<dynamic, dynamic> value = event.snapshot.value as Map<dynamic, dynamic>;
  value.forEach((key, value) {
    list.add(PopularItemModel.fromJson(jsonDecode(jsonEncode(value))));
  });
  return list;
}
