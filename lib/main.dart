import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nike/intro.dart';
import 'package:nike/models/cart.dart';
import 'package:nike/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(NikeEcommerceApp());
}

class NikeEcommerceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> Cart(),
      builder: (context, child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}


