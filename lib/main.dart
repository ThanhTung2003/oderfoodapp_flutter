import 'package:auto_animated/auto_animated.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/model/restaurant_model.dart';
import 'package:oderfoodapp_flutter/screen/restaurant_home.dart';
import 'package:oderfoodapp_flutter/state/main_state.dart';
import 'package:oderfoodapp_flutter/strings/main_strings.dart';
import 'package:oderfoodapp_flutter/viewmodel/mainVM/main_view_model_imp.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'abennnnn',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final viewModel = MainViewModelImp();
  final mainStateController = Get.put(MainStateController());

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          restaurantText,
          style: GoogleFonts.jetBrainsMono(
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
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
            return Container(
              margin: const EdgeInsets.only(top: 10),
              child: LiveList(
                showItemDuration: const Duration(milliseconds: 350),
                showItemInterval: const Duration(milliseconds: 150),
                reAnimateOnVisibility: true,
                scrollDirection: Axis.vertical,
                itemCount: lst.length,
                itemBuilder: (context, index, animation) {
                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0, 0.1),
                        end: Offset.zero,
                      ).animate(animation),
                      child: InkWell(
                        onTap: () {
                          mainStateController.selectedRestaurant.value = lst[index];
                          Get.to(() => RestaurantHome());
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(lst[index].imageUrl, fit: BoxFit.cover),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  lst[index].name,
                                  style: GoogleFonts.jetBrainsMono(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  lst[index].address,
                                  style: GoogleFonts.jetBrainsMono(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}


class RestaurantImageWidget extends StatelessWidget {
  final String imageUrl;

  const RestaurantImageWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => const Center(
            child: Icon(Icons.image),
          ),
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}

class RestaurantInfoCard extends StatelessWidget {
  final String name;
  final String address;

  const RestaurantInfoCard({super.key, required this.name, required this.address});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: GoogleFonts.jetBrainsMono(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            address,
            style: GoogleFonts.jetBrainsMono(
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
