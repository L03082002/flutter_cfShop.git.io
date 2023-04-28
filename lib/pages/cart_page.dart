import 'package:caffe_shop/components/coffe_title.dart';
import 'package:caffe_shop/models/coffee.dart';
import 'package:caffe_shop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  //remove item from cart
  void removeFromCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemToCart(coffee);
  }

  // pay button tapped
  void payNow() {
    /*
    fill out your payment sevice here
     */
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //heading
              Text(
                "Your cart",
                style: TextStyle(fontSize: 20),
              ),

              //list of cart item
              Expanded(
                child: ListView.builder(
                    itemCount: value.userCart.length,
                    itemBuilder: (context, index) {
                      //get invidiual cart items
                      Coffee eachCoffee = value.userCart[index];

                      //return coffee tile
                      return CoffeeTitle(
                        coffee: eachCoffee,
                        onPressed: () => removeFromCart(eachCoffee),
                        icon: Icon(Icons.delete),
                      );
                    }),
              ),

              //pay button
              GestureDetector(
                onTap: payNow,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(25),),
                  child: const Center(
                      child:
                          Text("Pay Now", style: TextStyle(color: Colors.white))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
