import 'package:flutter/material.dart';
import 'package:oderfoodapp_flutter/state/cart_state.dart';
import 'package:oderfoodapp_flutter/strings/cart_string.dart';
import 'package:oderfoodapp_flutter/widgets/cart/cart_total_item_wideget.dart';

class TotalWidget extends StatelessWidget {
  const TotalWidget({
    super.key,
    required this.text,
    required this.isSubTotal,
    required this.value,
    required this.cartStateController,
  });

  final String text;
  final bool isSubTotal;
  final String value;
  final CartStateController cartStateController;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amberAccent,
      elevation: 12,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TotalItemWidget(
              text: totalText, 
              isSubTotal: false, 
              value: currencyFormat.format(cartStateController.sumCart())),
              const Divider(thickness: 0,color: Colors.black,),
              TotalItemWidget(
              text: shippingFeeText, 
              isSubTotal: false, 
              value: currencyFormat.format(cartStateController.getShippingFee())),
              const Divider(thickness: 0,color: Colors.black,),
              TotalItemWidget(
              text: subTotalText, 
              isSubTotal: true, 
              value: currencyFormat.format(cartStateController.getSubTotal())),
          ],
        ),
      ),
    );
  }
}
