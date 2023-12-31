import 'package:flutter/material.dart';
import 'package:nike/all_product.dart';
import 'package:nike/models/cart.dart';
import 'package:nike/models/shoe.dart';
import 'package:provider/provider.dart';

import 'components/shoe_title.dart';


class ShopPage extends StatefulWidget{
  const ShopPage({super.key});
  @override
  State<ShopPage> createState() => _ShopPageState();
}
class _ShopPageState extends State<ShopPage>{
  // ADD shoe to cart
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe);
        // SUCCESSFUL ADD
    showDialog(
      context: context,
      builder: (context)=> AlertDialog(
        title: Text('Successfully Added'),
        content: Text('Check Your Cart'),
      ),
    );
  }
  @override
  Widget build(BuildContext context){
    return Consumer<Cart>(
        builder: (context, value, child)=> Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Search',style: TextStyle(color: Colors.grey),
                  ),
                  Icon(
                    Icons.search,color: Colors.grey,
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 25.0),
              child: Text('Real world....becomes in your hand',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Hot Picks 🔥',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProductsPage()
                      ));
                    },
                    child: Text('See all'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  // create shoe
                  Shoe shoe = value.getShoseList()[index];
                  return ShoeTitle(shoe: shoe,
                    onTap: ()=> addShoeToCart(shoe),

                  );
                },
              ),
            ),
          ],
        )
    );
  }
}