
class RestaurantModel {
  String restaurantId;
  String address;
  String name;
  String imageUrl;
  String payment;
  String phone;

  RestaurantModel({
    this.restaurantId = '', // Thêm thuộc tính restaurantId
    required this.address,
    required this.name,
    required this.imageUrl,
    required this.payment,
    required this.phone,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      address: json['address'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      payment: json['payment'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    final data = Map<String, dynamic>();
    data['address'] = address;
    data['name'] = name;
    data['imageUrl'] = imageUrl;
    data['payment'] = payment;
    data['phone'] = phone;
    return data;
  }
}
