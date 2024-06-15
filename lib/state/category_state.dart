
import 'package:get/get.dart';
import 'package:oderfoodapp_flutter/model/category_model.dart';

class CategoryStateController extends GetxController{
  var selectedCategory = CategoryModel(name: 'name', image: 'image', foods: []).obs;
}