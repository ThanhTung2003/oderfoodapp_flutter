import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/model/cart_model.dart';
import 'package:oderfoodapp_flutter/state/cart_state.dart';
import 'package:oderfoodapp_flutter/strings/cart_string.dart';

class CartPriceWidget extends StatelessWidget {
  const CartPriceWidget({
    super.key,
    required this.cartStateController,
    required this.cartModel,
  });
  final CartModel cartModel;
  final CartStateController cartStateController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 8),
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment:
              MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.monetization_on,
              color: Colors.amber,
              size: 16,
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              currencyFormat.format(
                  cartModel.price),
              style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight:
                      FontWeight.bold),
              maxLines: 2,
              overflow:
                  TextOverflow.ellipsis,
            ),
          ]),
    );
  }
}

class CartTextNameWidget extends StatelessWidget {
  const CartTextNameWidget({
    super.key,
    required this.cartStateController,
    required this.cartModel,
  });

  final CartStateController cartStateController;
  final CartModel cartModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 8),
      child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment:
              MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                cartModel.name,
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight:
                        FontWeight.bold),
                maxLines: 2,
                overflow:
                    TextOverflow.ellipsis,
              ),
            ),
          ]),
    );
  }
}