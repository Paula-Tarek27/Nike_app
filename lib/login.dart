import 'package:flutter/material.dart';
import 'package:nike/register.dart';

import 'forget_pass.dart';
import 'intro.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('login',
          style: TextStyle(
            color: Colors.white
          ),)
        ),

        //child: Scaffold(
        backgroundColor: Colors.grey,
        body: SingleChildScrollView(
        child: Container(
        child: SafeArea(
        child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(
        Icons.account_circle,color: Colors.white,
        size: 100,
    ),
    SizedBox(height: 10),
    Text(
    'Hello 🖤',
    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,
    fontSize:24
    ),
    ),
    SizedBox(height: 10),
    Text(
    'Welcome back',
    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,
    fontSize:20
    ),
    ),
    SizedBox(height: 10),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: Container(
    decoration: BoxDecoration(
    color: Colors.grey[200],
    border: Border.all(color: Colors.black),
    borderRadius: BorderRadius.circular(12),
    ),
    child :Padding(
    padding: const EdgeInsets.only(left: 20.0),
    child: TextField(
    decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Email',
    ),
    ),
    ),
    ),
    ),
    SizedBox(height: 10),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: Container(
    decoration: BoxDecoration(
    color: Colors.grey[200],
    border: Border.all(color: Colors.black),
    borderRadius: BorderRadius.circular(12),
    ),
    child :Padding(
    padding: const EdgeInsets.only(left: 20.0),
    child: TextField(
    obscureText: true,
    decoration: InputDecoration(
    border: InputBorder.none,
    hintText: 'Password',
    ),
    ),
    ),
    ),
    ),
    SizedBox(
      height: 0.5,
    ),
          TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgetPasswordPage()
              ));
            },
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forget Password',style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
            ),
          ),
    Divider(
      height: 10,
      thickness: 2,
      indent: 20,
      endIndent: 0,
      color: Colors.grey[600],
    ),
    SizedBox(height: 10),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: Container(
    padding: EdgeInsets.all(25),
    decoration: BoxDecoration(color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    ),
    child : Center(
    child: Text('LogIn',
    style: TextStyle(color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    ),
    ),
    ),
    ),
    ),
    SizedBox(height: 10),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    TextButton(
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>IntroPage()
      ));
    },
    child: Text('DONE'),
    style: ButtonStyle(
    foregroundColor: MaterialStateProperty.all(Colors.white),
    ),
    ),
    SizedBox(width: 5),
    GestureDetector(
    onTap: (){
    },
    child: GestureDetector(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()
    ));
    },
    child: Text('Register now',
    style: TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold
    ),),
    ),
    )
    ],
    ),
    ],),
    ),
    ),
    ),
    )
    );
  }
}