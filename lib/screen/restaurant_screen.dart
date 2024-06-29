// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';

import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/model/cart_model.dart';
import 'package:oderfoodapp_flutter/model/restaurant_model.dart';
import 'package:oderfoodapp_flutter/screen/restaurant_home_detail.dart';
import 'package:oderfoodapp_flutter/state/cart_state.dart';
import 'package:oderfoodapp_flutter/state/main_state.dart';
import 'package:oderfoodapp_flutter/strings/cart_string.dart';
import 'package:oderfoodapp_flutter/strings/main_strings.dart';
import 'package:oderfoodapp_flutter/viewmodel/main_view_model_imp.dart';
import 'package:oderfoodapp_flutter/widgets/main/main_widget.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  RestaurantScreenState createState() => RestaurantScreenState();
}

class RestaurantScreenState extends State<RestaurantScreen> {
  final viewModel = MainViewModelImp();
  final mainStateController = Get.put(MainStateController());
  final cartStateController = Get.put(CartStateController());
  final box = GetStorage();
// ham init cart
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (box.hasData(successtitle)) {
        var cartSave = await box.read(successMessage) as String;
        if (cartSave.isNotEmpty && cartSave.isNotEmpty) {
          final listCart = jsonDecode(cartSave) as List<dynamic>;
          final listCartParsed =
              listCart.map((e) => CartModel.fromJson(e)).toList();
          if (listCartParsed.isNotEmpty) {
            cartStateController.cart.value = listCartParsed;
          }
        }
      } else {
        cartStateController.cart.value = List<CartModel>.empty(growable: true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Đặt màu nền cho Scaffold
      appBar: AppBar(
        title: Text(
          restaurantText,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.amber,
        elevation: 10,
      ),
      body: FutureBuilder(
        future: viewModel.displayRestaurantList(),
        builder: (context, AsyncSnapshot<List<RestaurantModel>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: SpinKitWaveSpinner( 
              color: Colors.amberAccent, 
              size: 100.0,
              waveColor: Colors.orangeAccent,
              trackColor: Color.fromARGB(255, 245, 231, 191),
              duration: Duration(milliseconds: 2000),
            ));
          } else if (snapshot.hasError) {
            return Center(child: Text('Lỗi: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Không có dữ liệu'));
          } else {
            var lst = snapshot.data!;
            return LiveList.options(
              options: const LiveOptions(
                showItemInterval: Duration(milliseconds: 150),
                showItemDuration: Duration(milliseconds: 350),
                reAnimateOnVisibility: true,
              ),
              itemCount: lst.length,
              itemBuilder: (context, index, animation) =>
                  buildAnimatedItem(context, index, animation, lst),
            );
          }
        },
      ),
    );
  }

  Widget buildAnimatedItem(BuildContext context, int index,
      Animation<double> animation, List<RestaurantModel> lst) {
    return FadeTransition(
      opacity: animation,
      child: SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 0.1),
          end: Offset.zero,
        ).animate(animation),
        child: Container(
          margin: const EdgeInsets.only(top: 0),
          child: InkWell(
            onTap: () {
              mainStateController.selectedRestaurant.value = lst[index];
              Get.to(() => RestaurantHome());
            },
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2.5 * 0.92,
              color: Colors.white, // Đặt màu nền cho Container bao quanh
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RestaurantImageWidget(
                      imageUrl: lst[index].imageUrl), // tách thành widget
                  RestaurantInfoCard(
                      name: lst[index].name,
                      address: lst[index].address) // tách thành widget
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
