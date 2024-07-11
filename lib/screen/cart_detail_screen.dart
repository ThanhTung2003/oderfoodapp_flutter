import 'package:flutter/material.dart';
import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/screen/payment_screen.dart';
import 'package:oderfoodapp_flutter/state/cart_state.dart';
import 'package:oderfoodapp_flutter/strings/cart_string.dart';
import 'package:oderfoodapp_flutter/viewmodel/cart_vm/cart_view_model_imp.dart';
import 'package:oderfoodapp_flutter/widgets/cart/cart_image_widget.dart';
import 'package:oderfoodapp_flutter/widgets/cart/cart_info_widget.dart';
import 'package:oderfoodapp_flutter/widgets/cart/cart_total_widget.dart';

class CartDetailScreen extends StatelessWidget {
  final box = GetStorage();
  final CartStateController cartStateController =
      Get.put(CartStateController());
  final CartViewModelImp cartViewModelImp = CartViewModelImp();

  CartDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          cartTitleName,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.amber,
        // actions: [
        //   cartStateController.getQuantity() >
        //           0 // kiểm tra nếu giỏ hàng rỗng thì không có nút clear
        //       ? IconButton(
        //           onPressed: () =>
        //               cartViewModelImp.clearCart(cartStateController),
        //           icon: const Icon(Icons.clear))
        //       : Container()
        // ],
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
                              onPressed: (conext) {
                                Get.defaultDialog(
                                  title: deleteConfirmTitle,
                                  content: const Text(deleteConfirmContent),
                                  textCancel: cancelText,
                                  textConfirm: confirmText,
                                  backgroundColor: Colors.amberAccent,
                                  buttonColor: Colors.redAccent,
                                  confirmTextColor: Colors.black,
                                  onConfirm: () => cartViewModelImp.deleteCart(
                                      cartStateController, index),
                                );
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
                            //height: 150,
                            width: double.infinity,
                            color: Colors.white,
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // CART IMAGE
                                Expanded(
                                  flex: 4,
                                  child: CartImageWidget(
                                    cartStateController: cartStateController,
                                    cartModel: cartStateController.cart[index],
                                  ),
                                ),
                                //cart info
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
                                          // cart food name
                                          CartTextNameWidget(
                                            cartStateController:
                                                cartStateController,
                                            cartModel:
                                                cartStateController.cart[index],
                                          ),
                                          // cart food price
                                          CartPriceWidget(
                                            cartStateController:
                                                cartStateController,
                                            cartModel:
                                                cartStateController.cart[index],
                                          ),
                                        ],
                                      ),
                                    )),
                                Center(
                                  child: Obx(
                                    () => ElegantNumberButton(
                                      initialValue: cartStateController
                                          .cart[index].quantity,
                                      buttonSizeHeight: 25,
                                      buttonSizeWidth: 25,
                                      textStyle:
                                          GoogleFonts.roboto(fontSize: 16),
                                      minValue: 1,
                                      maxValue: 99,
                                      color: Colors.amber,
                                      onChanged: (value) {
                                        // update quantity
                                        cartViewModelImp.updateCart(
                                            cartStateController,
                                            index,
                                            value.toInt());
                                      },
                                      decimalPlaces: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Cart Total Widget
                  TotalWidget(
                    cartStateController: cartStateController,
                    text: '',
                    value: '',
                    isSubTotal: false,
                  ),
                  //button thanh toan
                  Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: SizedBox(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const payment_food()),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.amberAccent),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    vertical: 20.0, horizontal: 100.0)),
                            textStyle: MaterialStateProperty.all(
                                const TextStyle(fontSize: 20)),
                            side: MaterialStateProperty.all(const BorderSide(
                                color: Colors.black, width: 1.0)),
                          ),
                          child: Text('Check Out',
                              style: GoogleFonts.roboto(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                              )),
                        ),
                      )),
                ],
              ))
          : Center(
              child: Text(
                cartEmptyText,
                style: GoogleFonts.roboto(
                    fontSize: 20, fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
    );
  }
}
