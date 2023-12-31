import 'package:flutter/material.dart';

import 'shoe.dart';
class Cart extends ChangeNotifier{
  List<Shoe> shoeShop =[
    Shoe(name: 'jorden',
        price: '2000L.E',
        description: 'Red one special edition ',
        imagePath: 'assets/images/j1.jpg'
    ),
    Shoe(name: 'Rounded',
        price: '650L.E',
        description: 'Soft and Comfortable',
        imagePath: 'assets/images/t2.jpg'
    ),
    Shoe(name: 'jordenAX7',
        price: '1800L.E',
        description: 'Limited edition',
        imagePath: 'assets/images/j2.jpg'
    ),
    Shoe(name: 'Rounded',
        price: '650',
        description: 'Soft and Comfortable',
        imagePath: 'assets/images/t3.jpg'
    ),
  ];
  // user items
List<Shoe> userCart = [];
// GET
List<Shoe> getShoseList(){
  return shoeShop;
}
List<Shoe> getUsserCart(){
  return userCart;
}
// ADD
void addItemToCart(Shoe shoe){
  userCart.add(shoe);
  notifyListeners();
}
// REMOVE
void removeItemFromCart(Shoe shoe){
  userCart.remove(shoe);
  notifyListeners();
}
}