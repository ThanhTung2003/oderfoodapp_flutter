// xài chung nhà hàng và best deal

class PopularItemModel {
  String foodId;
  String name;
  String menuId;
  String image;

  // Constructor
  PopularItemModel({
    required this.foodId,
    required this.name,
    required this.menuId,
    required this.image,
  });

  // Factory constructor to create an instance from a JSON object
  factory PopularItemModel.fromJson(Map<String, dynamic> json) {
    return PopularItemModel(
      foodId: json['food_id'],
      name: json['name'],
      menuId: json['menu_id'],
      image: json['image'],
    );
  }

  // Method to convert an instance to a JSON object
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['food_id'] = foodId;
    data['name'] = name;
    data['menu_id'] = menuId;
    data['image'] = image;
    return data;
  }
}



  