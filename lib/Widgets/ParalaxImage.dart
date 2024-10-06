import 'package:flutter/material.dart';

class MyImageParallax extends StatelessWidget {
  final List<Map<String, String>> itemList;
  final double imageWidth;
  final double imageHeight;
  final double borderRadius;

  const MyImageParallax({
    Key? key,
    required this.itemList,
    this.imageWidth = 375,
    this.imageHeight = 225,
    this.borderRadius = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: imageHeight, // Ukuran header
      child: PageView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return Center(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                // Gambar dengan efek parallax dan border radius
                Hero(
                  tag: itemList[index]['title']!,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(borderRadius),
                    child: Image.asset(
                      itemList[index]['image']!,
                      width: imageWidth,
                      height: imageHeight,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
