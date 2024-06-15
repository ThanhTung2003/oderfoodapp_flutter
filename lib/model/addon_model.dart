
// ignore_for_file: prefer_collection_literals

class AddonModel{
  String name ='';
  double price=0;

  AddonModel({required this.name, required this.price});

  AddonModel.fromJson(Map<String,dynamic> json)
  {
    name = json['name'];
    price = double.parse(json['price'].toString()) ;

  }
  Map<String,dynamic>toJson() 
  {
    final data = Map<String,dynamic>();
    data['name']=name;
    data['price']=price;
    return data;
  } 
}