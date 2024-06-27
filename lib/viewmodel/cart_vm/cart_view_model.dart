import 'package:oderfoodapp_flutter/state/cart_state.dart';

abstract class CartViewModel {
  void updateCart(CartStateController cartStateController,int index,int value);
}