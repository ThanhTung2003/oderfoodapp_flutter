import 'package:oderfoodapp_flutter/state/cart_state.dart';
import 'package:oderfoodapp_flutter/viewmodel/cart_vm/cart_view_model.dart';

class CartViewModelImp implements CartViewModel {
  @override
  void updateCart(CartStateController cartStateController,int index,int value) {
    // update quantity
    cartStateController.cart[index].quantity = value;
    cartStateController.cart.refresh();
  }
}
