import 'package:auto_animated/auto_animated.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oderfoodapp_flutter/const/const.dart';
import 'package:oderfoodapp_flutter/model/category_model.dart';
import 'package:oderfoodapp_flutter/widgets/common/common_widgets.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
    required this.lst,
  });

  final List<CategoryModel> lst;

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
        Expanded(
          child: LiveGrid(
            showItemDuration:const Duration(milliseconds: 300),
            showItemInterval:const Duration(milliseconds: 300),
            reAnimateOnVisibility: true,
            scrollDirection: Axis.vertical,
            itemCount: lst.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
            itemBuilder: animationItemBuilder((index) => InkWell(
              onTap: () {},
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: lst[index].image,
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) => const Center(
                        child: Icon(Icons.image),
                      ),
                      progressIndicatorBuilder: (context, url, downloadProgress) => 
                          const Center(child: CircularProgressIndicator()),
                    ),
                    Container(
                      color:const Color(COLOR_OVERPLAY), // Applying ARGB overlay color
                    ),
                    Center(
                      child: Text(
                        lst[index].name,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ),
        )
      ],
    );
  }
}
