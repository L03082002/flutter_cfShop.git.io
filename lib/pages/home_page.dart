import 'package:caffe_shop/components/bottom_nav_bar.dart';
import 'package:caffe_shop/const.dart';
import 'package:caffe_shop/pages/cart_page.dart';
import 'package:caffe_shop/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //navigate bottom bar
  int _selectedIndex = 0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //pages
  final List<Widget> _pages = [
    //shop page
    ShopPage(),

    //cart page
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}