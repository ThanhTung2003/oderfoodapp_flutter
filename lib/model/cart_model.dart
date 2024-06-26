import 'package:oderfoodapp_flutter/model/food_model.dart';

class CartModel extends FoodModel {
  int quantity;

  CartModel({
    required super.id,
    required super.name,
    required super.image,
    required super.price,
    required super.size,
    required super.addon,
    required super.description,
    required this.quantity,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    final food = FoodModel.fromJson(json);
    final quantity = json['quantity'];
    return CartModel(
        id: food.id,
        name: food.name,
        image: food.image,
        price: food.price,
        size: food.size,
        addon: food.addon,
        description: food.description,
        quantity: quantity);
  }
  @override
  Map<String,dynamic>toJson() 
  {
    final data = <String,dynamic>{};
    data['name']=name;
    data['price']=price;
    data['id']=id;
    data['description']=description;
    data['image']=image;
    data['size']=size.map((v) => v.toJson()).toList();
    data['addon']=addon.map((v) => v.toJson()).toList();
    data['quantity'] = quantity;
    return data;
  } 
}
