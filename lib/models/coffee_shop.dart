import 'package:caffe_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee shop sale list
  final List<Coffee> _shop = [
    Coffee(
        name: "Espresso Coffe",
        price: "4.15",
        imagePath: "lib/image/espresso.png"
        ),
      Coffee(
        name: "Ice Coffe",
        price: "4.45",
        imagePath: "lib/image/ice_coffee.png"
        ),
      Coffee(
        name: "Latte Coffe",
        price: "4.20",
        imagePath: "lib/image/latte.png"
        ),  
  ];

  //user cart
List<Coffee> _usercart = [

];

  //get coffee list
  List<Coffee> get coffeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _usercart;

  //add item to cart
  void addItemToCart(Coffee coffee){
    _usercart.add(coffee);
  }

  //remove item from cart
  void removeItemToCart(Coffee coffee){
    _usercart.remove(coffee);
  }
}
