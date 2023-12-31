import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us',),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[500],
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Nike',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 10,
              thickness: 5,
              indent: 20,
              endIndent: 0,
              color: Colors.grey[600],
            ),
            SizedBox(height: 10.0),
            Text(
              'Nike is an American multinational corporation that designs, manufactures, markets, and sells athletic footwear, apparel, equipment, accessories, and services.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Our Mission',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 10,
              thickness: 5,
              indent: 20,
              endIndent: 0,
              color: Colors.grey[600],
            ),
            SizedBox(height: 10.0),
            Text(
              'To bring inspiration and innovation to every athlete in the world.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 10,
              thickness: 5,
              indent: 20,
              endIndent: 0,
              color: Colors.grey[600],
            ),
            SizedBox(height: 10.0),
            Text(
              'Email: nike@example.com\nPhone: +1 123 456 7890\nAddress: Nike Headquarters, Oregon, USA',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
