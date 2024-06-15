import 'package:oderfoodapp_flutter/firebase/category_reference.dart';
import 'package:oderfoodapp_flutter/model/category_model.dart';
import 'package:oderfoodapp_flutter/viewmodel/category_vm/category_viewmodel.dart';

class CategoryViewModelImp implements CategoryViewModel {
  @override
  Future<List<CategoryModel>> displayCategoryByRestaurantId(
      String restaurantId) {
    return getCategoryByRestaurantId(restaurantId);
  }
}
