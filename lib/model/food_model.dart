
// ignore_for_file: prefer_collection_literals

import 'package:oderfoodapp_flutter/model/addon_model.dart';
import 'package:oderfoodapp_flutter/model/size_model.dart';

class FoodModel{
  String description='',id='',name='',image='';
  double price = 0;
  List <SizeModel> size = List<SizeModel>.empty(growable: true);
  List <AddonModel> addon = List<AddonModel>.empty(growable: true);

  FoodModel(
      {required this.description,
       required this.id,
       required this.name,
       required this.image,
       required this.price,
       required this.size ,
       required this.addon});
  
  FoodModel.fromJson(Map<String,dynamic> json)
  {
    name = json['name'];
    id = json['id'];
    image = json['image'];
    description = json['description'];
    price = double.parse(json['price'].toString()) ;

    if(json['addon'] != null){
      addon = List<AddonModel>.empty(growable: true);
      json['addon'].forEach((v){
        addon.add(AddonModel.fromJson(v));
      });
    }

  if(json['size'] != null){
      size = List<SizeModel>.empty(growable: true);
      json['size'].forEach((v){
        size.add(SizeModel.fromJson(v));
      });
    }
  }

Map<String,dynamic>toJson() 
  {
    final data = Map<String,dynamic>();
    data['name']=name;
    data['price']=price;
    data['id']=id;
    data['description']=description;
    data['image']=image;
    data['size']=size.map((v) => v.toJson()).toList();
    data['addon']=addon.map((v) => v.toJson()).toList();
    return data;
  } 

}