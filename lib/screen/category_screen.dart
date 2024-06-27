import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oderfoodapp_flutter/model/category_model.dart';
import 'package:oderfoodapp_flutter/state/category_state.dart';
import 'package:oderfoodapp_flutter/state/main_state.dart';
import 'package:oderfoodapp_flutter/strings/restaurant_home_strings.dart';
import 'package:oderfoodapp_flutter/viewmodel/category_vm/category_viewmodel_imp.dart';
import 'package:oderfoodapp_flutter/widgets/category/category_list_widget.dart';
import 'package:oderfoodapp_flutter/widgets/common/appbar_cart_widget.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  final viewmodel = CategoryViewModelImp();
  final MainStateController mainStateController = Get.find(); //đã dùng mainstatecontroller nên ta chỉ lấy 
  final CategoryStateController categoryStateController = Get.put(CategoryStateController());// ko đc put,nên làm z

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCartButton(title: categoryText),
      body: FutureBuilder(
        future: viewmodel.displayCategoryByRestaurantId(
            mainStateController.selectedRestaurant.value.restaurantId),
        builder: (context, AsyncSnapshot<List<CategoryModel>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Lỗi: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('Không có dữ liệu'));
          } else {
            var lst = snapshot.data!;
            return Container(
              margin: const EdgeInsets.only(top: 10),
              child: CategoryListWidget(lst: lst,categoryStateController: categoryStateController,),//danh sach category
            );
          }
        },
      ),
    );
  }
}


