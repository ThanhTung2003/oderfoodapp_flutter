class RestaurantModel {
  String address;
  String name;
  String imageUrl;
  String payment;
  String phone;

  RestaurantModel({
    required this.address,
    required this.name,
    required this.imageUrl,
    required this.payment,
    required this.phone,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      address: json['address'] ?? '',
      name: json['name'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      payment: json['payment'] ?? '',
      phone: json['phone'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'name': name,
      'imageUrl': imageUrl,
      'payment': payment,
      'phone': phone,
    };
  }
}
