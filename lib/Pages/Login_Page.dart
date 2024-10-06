import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String correctUsername = 'admin'; // Username yang benar
  String correctPassword = '123456'; // Password yang benar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 55),
                child: SizedBox(
                  width: 325,
                  child: TextField(
                    controller: usernameController, // Controller untuk username
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Username',
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                child: SizedBox(
                  width: 325,
                  child: TextField(
                    controller: passwordController, // Controller untuk password
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 55),
                child: ElevatedButton(
                  child: const SizedBox(
                    width: 100,
                    child: Center(
                      child: Text(
                        'Masuk',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Cek apakah username dan password benar
                    if (usernameController.text == correctUsername &&
                        passwordController.text == correctPassword) {
                      Get.toNamed('/Home'); // Masuk ke halaman Home
                    } else {
                      // Menampilkan snackbar jika login gagal
                      Get.snackbar(
                        'Login Gagal', // Judul
                        'Username atau Password salah', // Pesan
                        backgroundColor: Colors.redAccent,
                        colorText: Colors.white,
                        snackPosition: SnackPosition.BOTTOM,
                        duration: const Duration(seconds: 2),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 215, 215, 215),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
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
