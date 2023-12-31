import 'package:flutter/material.dart';
import 'package:nike/intro.dart';
import 'package:nike/login.dart';
import 'package:nike/update_profile.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.grey,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 6.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Full Name',labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.person,color: Colors.white),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.email,color: Colors.white),
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',labelStyle: TextStyle(color: Colors.white),
                prefixIcon: Icon(Icons.lock,color: Colors.white),
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              padding: EdgeInsets.all(20),
              onPressed: () {
              },
              color: Colors.white,
              child: Text('Register',
              style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()
                ));
              },
              child: Text('Already have an account? Login',
                style: TextStyle(color: Colors.white)),
            ),
            SizedBox(
              height: 2,
            ),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateProfilePage()
                ));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Update Your Profile',style: TextStyle(fontSize: 18,color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height:2.0),
            GestureDetector(
              onTap: (){},
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>IntroPage()
                  ));
                },
                child: Text('Done',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}