import 'package:flutter/material.dart';
import 'package:nike/models/cart.dart';
import 'package:nike/models/shoe.dart';
import 'package:provider/provider.dart';

import 'components/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context,value,child)=> Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Cart', style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 25),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUsserCart().length,
                itemBuilder: (context,index) {
                  Shoe indvidualShoe = value.getUsserCart()[index];
                  return CartItem(shoe: indvidualShoe);
                }
              ),
            )
          ],
        ),
      ),
    );
  }
}