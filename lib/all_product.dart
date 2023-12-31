
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/cart.dart';
import 'models/shoe.dart';



class AllProductsPage extends StatelessWidget {

  List<String>images=[
    'assets/images/t4.jpg',
    'assets/images/j4.jpg',
    'assets/images/t2.jpg',
    'assets/images/j2.jpg',
    'assets/images/t3.jpg',
    'assets/images/j3.jpg',
    'assets/images/t1.jpg',
    'assets/images/t1.jpg',

  ];
  List<String>text=[
    'Nike Sportswear',
    'Air Jordan III',
    'Camista Nike',
    'Jordan XIII',
    'Rounded Nike',
    'Jordan 1 Mid',
    'POLO',
    'POLO',
  ];
  List<String>description=[
    'Avalible',
    'Avalible',
    'Avalible',
    'Avalible',
    'Avalible',
    'Avalible',
    'Avalible',
    'Avalible',
  ];


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 3.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Products :',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
              ),
              Text('To bring inspiration and innovation to every athlete in the world.🔥',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 19.0
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: images.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              Expanded(
                                flex:2,
                                child: Image.asset(images[index],
                                  fit: BoxFit.cover,
                                  height: 150,
                                  width: double.infinity,
                                ),
                              ),
                              Text(text[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,fontSize: 20)
                              ),
                              Text(description[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,fontSize: 15)
                              ),
                              GestureDetector(
                                onTap: (){
                                },
                                child: Row(
                                  children: [
                                    Text('Buy',style: TextStyle(
                                      color: Colors.black,fontWeight: FontWeight.w500,
                                      fontSize: 15,
                                    ),),
                                    SizedBox(width: 5),
                                    Icon(Icons.shopping_bag_rounded)
                                  ],
                                ),
                              )
                            ],

                          ),
                        ),
                      ),
                    );
                  } ,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

                ),
              ),
            ],
          ),
        )
    );
  }
}
