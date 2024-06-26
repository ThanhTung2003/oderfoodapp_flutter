import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/model/restaurant_model.dart';
import 'package:oderfoodapp_flutter/screen/restaurant_home_detail.dart';
import 'package:oderfoodapp_flutter/state/main_state.dart';
import 'package:oderfoodapp_flutter/strings/main_strings.dart';
import 'package:oderfoodapp_flutter/viewmodel/main_view_model_imp.dart';
import 'package:oderfoodapp_flutter/widgets/main/main_widget.dart';

class RestaurantScreen extends StatelessWidget{
  final viewModel = MainViewModelImp();
  final mainStateController = Get.put(MainStateController());

  RestaurantScreen({super.key});
  
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
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 10,
      ),
      body: FutureBuilder(
        future: viewModel.displayRestaurantList(),
        builder: (context, AsyncSnapshot<List<RestaurantModel>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
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
              Get.to(()=>RestaurantHome());
            },
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2.5 * 0.92,
              color: Colors.white, // Đặt màu nền cho Container bao quanh
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RestaurantImageWidget(
                      imageUrl: lst[index].imageUrl), //tách thành widget
                  RestaurantInfoCard(
                    name:lst[index].name,
                    address:lst[index].address) // tach thanh widget
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
