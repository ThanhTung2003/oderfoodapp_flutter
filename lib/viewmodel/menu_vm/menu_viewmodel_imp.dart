import 'package:get/get.dart';
import 'package:oderfoodapp_flutter/screen/category_screen.dart';
import 'package:oderfoodapp_flutter/viewmodel/menu_vm/menu_viewmodel.dart';

class MenuViewModelImp implements MenuViewModel {
  @override
  void navigateCategories() {
    Get.to(()=>CategoryScreen());
  }

}