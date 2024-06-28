import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:oderfoodapp_flutter/model/cart_model.dart';
import 'package:oderfoodapp_flutter/state/cart_state.dart';

class CartImageWidget extends StatelessWidget {
  const CartImageWidget({
    super.key,
    required this.cartStateController,
    required this.cartModel,
  });

  final CartStateController cartStateController;
  final CartModel cartModel;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl:
          cartModel.image,
      fit: BoxFit.cover,
      errorWidget: (context, url, error) =>
          const Center(
        child: Icon(Icons.image),
      ),
      progressIndicatorBuilder: (context, url,
              downloadProgress) =>
          const Center(
              child: CircularProgressIndicator()),
    );
  }
}