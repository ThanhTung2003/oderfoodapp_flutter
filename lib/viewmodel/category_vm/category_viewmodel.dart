import 'package:oderfoodapp_flutter/model/category_model.dart';

abstract class CategoryViewModel{
  Future<List<CategoryModel>> displayCategoryByRestaurantId(String restaurantId);
}