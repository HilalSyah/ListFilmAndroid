import 'package:flutter/material.dart';

class Cardlist extends StatelessWidget {
  final String imagePath;
  final String title;
  final String year;
  final String description;

  const Cardlist({
    super.key,
    required this.imagePath,
    required this.title,
    required this.year,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 234, 234, 234),
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            // Gambar di samping kiri
            Image.asset(
              imagePath, // Path gambar
              width: 100,
              height: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 10), // Jarak antara gambar dan teks

            // Detail film di sebelah kanan
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title, // Judul film
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Tahun Rilis: $year", // Tahun rilis film
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description, // Deskripsi film
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
