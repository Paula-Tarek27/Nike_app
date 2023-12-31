import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
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
              'Contact Information:',
              style: TextStyle(
                fontSize: 25.0,
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
              'Email: contact@nike.com',
              style: TextStyle(fontSize: 16.0,color: Colors.white),
            ),
            Text(
              'Phone: 123-456-7890',
              style: TextStyle(fontSize: 16.0,color: Colors.white),
            ),
            SizedBox(height: 20.0),
            Text(
              'Send Us a Message:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your message',
                border: OutlineInputBorder(),
              ),
              maxLines: 5,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Add logic to send message
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[600]
              ),
              child: Text('Send'),
            ),
            SizedBox(height: 10.0),
            Text(
              'For any issues or queries, please contact our support team at support@nike.com.',
              style: TextStyle(fontSize: 16.0,color: Colors.white),
            ),
            SizedBox(height: 20),
            Divider(
              height: 10,
              thickness: 5,
              indent: 20,
              endIndent: 0,
              color: Colors.grey[600],
            ),
            SizedBox(height: 20.0),
            Text(
              'FAQs:',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            // Add FAQs list or expandable sections for FAQs here
            Text(
              'Additional Support Options:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'You can also visit our website for more information or connect with us on social media.',
              style: TextStyle(
                color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
