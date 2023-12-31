import 'package:flutter/material.dart';

import 'home.dart';

class IntroPage extends StatelessWidget{
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(25.0),
              child: Image.asset('assets/images/nike.png',
              height: 240),
              ),
              SizedBox(height: 40),
              Text('NIKE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              )),
              SizedBox(height: 40),
              Text('Found your world with us',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey,
                  )),
              SizedBox(height: 40),
              GestureDetector(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()
                 )),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text('Shop Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}