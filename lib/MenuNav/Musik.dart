import 'package:flutter/material.dart';
import 'package:listfilm/Widgets/CardList.dart';
import 'package:listfilm/Widgets/ParalaxImage.dart';

class Musik extends StatelessWidget {
  const Musik({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> musikList = [
      {
        'title': 'Girls',
        'image': 'Assets/Images/girls.jpeg',
        'year': '2022',
        'description': 'Lagu hit dari grup K-pop yang membawa nuansa ceria.'
      },
      {
        'title': 'The Stranger',
        'image': 'Assets/Images/the-stranger.jpeg',
        'year': '2023',
        'description':
            'Lagu dengan melodi yang menegangkan dan lirik misterius.'
      },
      {
        'title': '7_27',
        'image': 'Assets/Images/7_27.jpeg',
        'year': '2021',
        'description':
            'Lagu populer yang menyentuh hati dengan alunan emosional.'
      },
      {
        'title': 'Freedom',
        'image': 'Assets/Images/freedom.jpeg',
        'year': '2020',
        'description':
            'Sebuah lagu tentang kebebasan dengan irama yang penuh energi.'
      },
      {
        'title': 'My Worlds',
        'image': 'Assets/Images/my-worlds.jpeg',
        'year': '2022',
        'description':
            'Lagu tentang perjalanan pribadi yang mendalam dan reflektif.'
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Daftar Musik', style: TextStyle(color: Colors.black)),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(right: 240),
                child: Text(
                  "List Musik",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
            MyImageParallax(itemList: musikList),
            Expanded(
              child: ListView.builder(
                itemCount: musikList.length,
                itemBuilder: (context, index) {
                  return Cardlist(
                    imagePath: musikList[index]['image']!,
                    title: musikList[index]['title']!,
                    year: musikList[index]['year']!,
                    description: musikList[index]['description']!,
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
