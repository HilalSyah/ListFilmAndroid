import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listfilm/Controllers/BottomNavCntrler.dart';
import 'package:listfilm/MenuNav/Film.dart';
import 'package:listfilm/MenuNav/Musik.dart';
import 'package:listfilm/MenuNav/Profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Bottomnavcntrler bottomnavcntrler = Get.put(Bottomnavcntrler());
    final List<Widget> menu = [Film(), Musik(), Profile()];

    // Tambahkan PageController
    final PageController _pageController = PageController();

    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.white,
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            bottomnavcntrler.IndexSelect.value =
                index; // Update index in controller
          },
          children: menu,
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(top: 15),
          child: AnimatedNotchBottomBar(
            notchBottomBarController: NotchBottomBarController(
              index: bottomnavcntrler.IndexSelect.value,
            ),
            color: const Color.fromARGB(255, 213, 213, 213),
            showLabel: true,
            textOverflow: TextOverflow.visible,
            maxLine: 1,
            shadowElevation: 5,
            kBottomRadius: 28.0,
            notchColor: Colors.black87,
            removeMargins: false,
            bottomBarWidth: 500,
            showShadow: false,
            durationInMilliSeconds: 300,
            itemLabelStyle: const TextStyle(fontSize: 10),
            elevation: 1,
            bottomBarItems: const [
              BottomBarItem(
                inActiveItem: Icon(
                  Icons.home_filled,
                  color: Colors.blueGrey,
                ),
                activeItem: Icon(
                  Icons.movie,
                  color: Colors.blueAccent,
                ),
                itemLabel: 'Film',
              ),
              BottomBarItem(
                inActiveItem: Icon(Icons.music_note, color: Colors.blueGrey),
                activeItem: Icon(
                  Icons.music_note,
                  color: Colors.blueAccent,
                ),
                itemLabel: 'Musik',
              ),
              BottomBarItem(
                inActiveItem: Icon(
                  Icons.person,
                  color: Colors.blueGrey,
                ),
                activeItem: Icon(
                  Icons.person,
                  color: Colors.yellow,
                ),
                itemLabel: 'Profile',
              ),
            ],
            onTap: (index) {
              // Update the selected index in the controller
              bottomnavcntrler.IndexSelect.value = index;

              // Animate to the selected page
              _pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
            kIconSize: 24.0,
          ),
        ),
      );
    });
  }
}
