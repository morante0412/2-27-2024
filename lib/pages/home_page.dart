import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/messages_page.dart';
import 'package:flutter_application_1/pages/notifications_page.dart';
import 'package:flutter_application_1/pages/profile_page.dart';
import 'package:flutter_application_1/pages/shop_page.dart';
import '../components/bottom_nav_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // This selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // This method will update our selected index
  // When the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Pages to display
  final List<Widget> _pages = [
    //shop page
    const ShopPage(),

    // Cart page
    const CartPage(),

    const PPage(),
    const MPage(),
    const NPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

