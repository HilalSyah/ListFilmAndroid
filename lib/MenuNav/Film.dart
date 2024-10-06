import 'package:flutter/material.dart';
import 'package:listfilm/Widgets/CardList.dart';
import 'package:listfilm/Widgets/ParalaxImage.dart';

class Film extends StatelessWidget {
  const Film({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> filmList = [
      {
        'title': 'AGATHA',
        'image': 'Assets/Images/agatha.jpg',
        'year': '2022',
        'description': 'Film misteri dengan plot yang menegangkan.'
      },
      {
        'title': 'BLINK TWICE',
        'image': 'Assets/Images/BLINK-TWICE.jpg',
        'year': '2023',
        'description': 'Film aksi penuh kejutan dan adegan menegangkan.'
      },
      {
        'title': 'MONSTERS',
        'image': 'Assets/Images/MOSTERS.jpg',
        'year': '2021',
        'description': 'Pertarungan seru antara manusia dan monster raksasa.'
      },
      {
        'title': 'PENGUIN',
        'image': 'Assets/Images/PENGUIN.jpg',
        'year': '2020',
        'description': 'Kisah petualangan lucu seekor penguin di kutub.'
      },
      {
        'title': 'TULSA KING',
        'image': 'Assets/Images/TULSA-KING.jpg',
        'year': '2022',
        'description': 'Drama kriminal tentang perjalanan seorang mafia.'
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Daftar Film', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(right: 240),
                child: Text(
                  "List Film",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            MyImageParallax(itemList: filmList),
            Expanded(
              child: ListView.builder(
                itemCount: filmList.length,
                itemBuilder: (context, index) {
                  return Cardlist(
                    imagePath: filmList[index]['image']!,
                    title: filmList[index]['title']!,
                    year: filmList[index]['year']!,
                    description: filmList[index]['description']!,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
