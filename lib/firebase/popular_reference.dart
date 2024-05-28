import 'package:firebase_database/firebase_database.dart';
import 'package:oderfoodapp_flutter/const/const.dart';
import 'package:oderfoodapp_flutter/model/popular_item_model.dart';

Future<List<PopularItemModel>> getMostPopularByRestaurantId(
    String restaurantId) async {
  var list = List<PopularItemModel>.empty(growable: true);

  // Lấy dữ liệu từ Firebase
  DatabaseEvent event =
      await FirebaseDatabase.instance.ref().child(RESTAURANT_REF)
      .child(restaurantId)
      .child(MOST_POPULAR_REF).once();
  DataSnapshot snapshot = event.snapshot;

  // Kiểm tra nếu có dữ liệu
  if (snapshot.exists && snapshot.value != null) {
    Map<dynamic, dynamic> values = snapshot.value as Map<dynamic, dynamic>;

    values.forEach((key, value) {
      list.add(PopularItemModel.fromJson(Map<String, dynamic>.from(value)));
    });
  } else {
    // Nếu snapshot không tồn tại hoặc giá trị bị null, trả về danh sách rỗng
    // print('No data available');
  }

  return list;
}
