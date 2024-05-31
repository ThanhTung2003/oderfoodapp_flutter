class RestaurantModel {
  String restaurantId ='', address ='',name='',imageUrl='',paymentUrl='',phone='';
 
  RestaurantModel({
    required this.address,
    required this.name,
    required this.imageUrl,
    required this.paymentUrl,
    required this.phone,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      address: json['address'] ?? '',
      name: json['name'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      paymentUrl: json['payment'] ?? '',
      phone: json['phone'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'name': name,
      'imageUrl': imageUrl,
      'paymentUrl': paymentUrl,
      'phone': phone,
    };
  }
}
