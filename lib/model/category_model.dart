// ignore_for_file: prefer_collection_literals, unused_element, unnecessary_new

import 'package:oderfoodapp_flutter/model/food_model.dart';

class CategoryModel{
  String key = '',name = '', image = '';
  List <FoodModel> foods = new List<FoodModel>.empty(growable: true);

  CategoryModel(
      {
       required this.name,
       required this.image,
       required this.foods
       });

  CategoryModel.fromJson(Map<String,dynamic> json)
  {
    name = json['name'];
    image = json['image'];

    if(json['foods'] != null){
      foods = List<FoodModel>.empty(growable: true);
      json['foods'].forEach((v){
        foods.add(FoodModel.fromJson(v));
      });
    }

  Map<String,dynamic>toJson() 
    {
      final data = Map<String,dynamic>();
      data['name']=name;
      data['image']=image;
      data['foods']=foods.map((v) => v.toJson()).toList();
      return data;
    }   
  }
}