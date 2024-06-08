//SizeModel và AddonModel giống nhau nên xài chung
// có thể thay đổi hoặc cập nhật theo ý riêng của mình về sau này phát triển app thêm

// ignore_for_file: prefer_collection_literals

class SizeModel{
  String name ='';
  double price=0;

  SizeModel({required this.name, required this.price});

  SizeModel.fromJson(Map<String,dynamic> json)
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