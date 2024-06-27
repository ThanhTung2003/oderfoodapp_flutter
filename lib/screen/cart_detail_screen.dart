import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/state/cart_state.dart';
import 'package:oderfoodapp_flutter/strings/cart_string.dart';
import 'package:oderfoodapp_flutter/widgets/cart/cart_image_widget.dart';

class CartDetailScreen extends StatelessWidget {
  final box = GetStorage();
  final CartStateController cartStateController =
      Get.put(CartStateController());

  CartDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Cart',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.amber,
        actions: [
          cartStateController.getQuantity() >
                  0 // kiểm tra nếu giỏ hàng rỗng thì không có nút clear
              ? IconButton(onPressed: () {}, icon: const Icon(Icons.clear))
              : Container()
        ],
      ),
      body: cartStateController.getQuantity() > 0
          ? Obx(() => Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cartStateController.cart.length,
                      itemBuilder: (context, index) => Slidable(
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (context) {
                                // Xử lý sự kiện xóa item ở đây
                                cartStateController.cart.removeAt(index);
                              },
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: deleteText,
                            ),
                          ],
                        ),
                        child: Card(
                          elevation: 8.0,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 6.0),
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: CartImageWidget(
                                    cartStateController: cartStateController,
                                    cartModel: cartStateController.cart[index],
                                  ),
                                ),
                                //cart text food
                                Expanded(
                                    flex: 6,
                                    child: Container(
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children:[ Text(
                                                cartStateController
                                                    .cart[index].name,
                                                style: GoogleFonts.roboto(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),]
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children:[ 
                                                const Icon(Icons.monetization_on,color: Colors.amber,size: 16,),
                                                const SizedBox(width: 4,),
                                                Text(
                                                currencyFormat.format(cartStateController
                                                    .cart[index].price),
                                                style: GoogleFonts.roboto(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold),
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),]
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ))
          : const Center(child: Text(cartEmptyText)),
    );
  }
}
