// dùng chung cho bestdeal và most popular

class PopularItemModel {
  String foodId ='',name='', menuId='',image='';

  PopularItemModel(
    {
      required this.foodId,
      required this.name,
      required this.menuId,
      required this.image,
    }
  );

  PopularItemModel.fromJson(Map<String,dynamic>json){
    foodId = json['food_id'] ?? '';
    name = json['name'] ?? '';
    menuId = json['menu_id'] ?? '';
    image = json['image'] ?? '';
  }
  Map<String,dynamic> toJson(){
    final data  = <String,dynamic>{};
    data['food_id'] = foodId;
    data['name'] = name;
    data['menu_id'] = menuId;
    data['image'] = image;
    return data;
  }
}