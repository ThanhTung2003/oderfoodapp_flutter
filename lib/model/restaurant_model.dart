class RestaurantModel {
  String restaurantId;
  String name;
  String address;
  String imageUrl;
  String phone;
  String payment;

  RestaurantModel({
    required this.restaurantId,
    required this.name,
    required this.address,
    required this.imageUrl,
    required this.phone,
    required this.payment,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      restaurantId: json['restaurantId'] ?? '',
      name: json['name'] ?? '',
      address: json['address'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      phone: json['phone'] ?? '',
      payment: json['payment'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['restaurantId'] = restaurantId;
    data['name'] = name;
    data['address'] = address;
    data['imageUrl'] = imageUrl;
    data['phone'] = phone;
    data['payment'] = payment;
    return data;
  }
}
