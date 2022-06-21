import 'dart:ui';
import 'package:e_commerce/const/AppColors.dart';
import 'package:e_commerce/ui/ui.bottom_nav_pages/cart.dart';
import 'package:e_commerce/ui/ui.bottom_nav_pages/favourite.dart';
import 'package:e_commerce/ui/ui.bottom_nav_pages/home.dart';
import 'package:e_commerce/ui/ui.bottom_nav_pages/profile.dart';
import 'package:flutter/material.dart';


class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [
    Home(),
    Favourite(),
    Cart(),
    Profile(),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "E-Commerce",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.yellow,
        selectedLabelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home', backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: 'Favorite', backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Cart',backgroundColor: Colors.grey,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'person',backgroundColor: Colors.grey,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;

          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}