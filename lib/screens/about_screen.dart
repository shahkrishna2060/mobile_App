import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(
            color: Colors.black, // App theme color
          ),
        ),
        backgroundColor: Colors.white, // Background color
        elevation: 0, // No shadow
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Us',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to our E-Commerce App! We strive to provide you with the best shopping experience.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Contact Us',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email: krishna.shah123@gmail.com'),
              onTap: () {
                // Handle email contact
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone: 9807383546'),
              onTap: () {
                // Handle phone contact
              },
            ),
          ],
        ),
      ),
    );
  }
}
