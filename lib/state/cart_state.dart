import 'dart:convert';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:oderfoodapp_flutter/model/cart_model.dart';
import 'package:oderfoodapp_flutter/model/food_model.dart';
import 'package:oderfoodapp_flutter/strings/cart_string.dart';

class CartStateController extends GetxController {
  var cart = List<CartModel>.empty(growable: true).obs;
  final box = GetStorage();

  addToCart(FoodModel foodModel, {int quantity = 1}) async {
    try {
      var cartItem = CartModel(
          id: foodModel.id,
          name: foodModel.name,
          image: foodModel.image,
          price: foodModel.price,
          size: foodModel.size,
          addon: foodModel.addon,
          description: foodModel.description,
          quantity: quantity);
      if (isExists(cartItem)) {
        //nếu đơn hàng có sẵn trong giỏ thì cập nhật số lượng
        var foodNeedToUpdate =
            cart.firstWhere((element) => element.id == cartItem.id);
        foodNeedToUpdate.quantity += quantity;
      } else {
        cart.add(cartItem);
      }
      //sau khi cap nhat so luong thi luu vao gio hang lai
      var jsonDBEncode = jsonEncode(cart);
      await box.write('CART_Storage', jsonDBEncode);
      cart.refresh(); //Update
      Get.snackbar(successtitle, successMessage);
    } catch (e) {
      Get.snackbar(errorTitle, e.toString());
    }
  }

  bool isExists(CartModel cartItem) {
    return cart.any((e) => e.id == cartItem.id );
  }

  sumCart() {
    return cart.isEmpty
        ? 0
        : cart
            .map((e) => e.price * e.quantity)
            .reduce((value, element) => value + element);
  }

  int getQuantity() {
    return cart.isEmpty
        ? 0
        : cart
            .map((e) => e.quantity)
            .reduce((value, element) => value + element);
  }
  getShippingFee() => sumCart()*0.1; // 10% tong bill

  getSubTotal() => sumCart() + getShippingFee();
}
