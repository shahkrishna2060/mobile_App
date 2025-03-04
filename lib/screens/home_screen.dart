import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''), // Empty title to remove "Home" text
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.pushNamed(context, '/login'); // Navigate to LoginScreen
            },
          ),
          IconButton(
            icon: Icon(Icons.how_to_reg),
            onPressed: () {
              Navigator.pushNamed(
                  context, '/register'); // Navigate to RegisterScreen
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to Our E-Commerce App!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
