import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          // Memungkinkan scroll jika konten melebihi layar
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Gambar Profil
              CircleAvatar(
                radius: 70, // Ukuran lingkaran
                backgroundImage: AssetImage(
                    'Assets/Images/jojo.png'), // Ganti dengan path gambar profil Anda
              ),
              SizedBox(height: 20), // Jarak antara gambar dan teks

              // Nama Pengguna
              Text(
                "Nama Pengguna",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8), // Jarak antara nama dan email

              // Email Pengguna
              Text(
                "email@example.com",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 20), // Jarak sebelum tombol

              // Tombol untuk pengaturan dan keluar
              ElevatedButton(
                onPressed: () {
                  // Logika untuk pengaturan
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Warna tombol
                  padding: EdgeInsets.symmetric(
                      horizontal: 40, vertical: 12), // Padding
                ),
                child: Text("Pengaturan"),
              ),
              SizedBox(height: 10), // Jarak antara tombol

              ElevatedButton(
                onPressed: () {
                  // Logika untuk keluar
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red, // Warna tombol
                  padding: EdgeInsets.symmetric(
                      horizontal: 40, vertical: 12), // Padding
                ),
                child: Text("Keluar"),
              ),
              SizedBox(height: 20), // Jarak di bawah tombol

              // Info tambahan
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Ini adalah halaman profil Anda. Anda dapat mengubah informasi dan pengaturan di sini.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
