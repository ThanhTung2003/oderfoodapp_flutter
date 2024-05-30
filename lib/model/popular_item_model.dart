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
      foodId: json['foodid'],
      name: json['name'],
      menuId: json['menuid'],
      image: json['image'],
    );
  }

  // Method to convert an instance to a JSON object
  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['foodid'] = foodId;
    data['name'] = name;
    data['menuid'] = menuId;
    data['image'] = image;
    return data;
  }
}



  