
import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:oderfoodapp_flutter/const/const.dart';
import 'package:oderfoodapp_flutter/model/category_model.dart';

Future<List<CategoryModel>> getCategoryByRestaurantId(String restaurantId) async {
  var list = List<CategoryModel>.empty(growable: true);
  var event =
  await FirebaseDatabase.instance.ref()
  .child(RESTAURANT_REF)
  .child(restaurantId)
  .child(CATEGORY_REF)
  .once();
  Map<dynamic, dynamic> value = event.snapshot.value as Map<dynamic, dynamic>;
  value.forEach((key, value) {
    list.add(CategoryModel.fromJson(jsonDecode(jsonEncode(value))));
  });
  return list;
}