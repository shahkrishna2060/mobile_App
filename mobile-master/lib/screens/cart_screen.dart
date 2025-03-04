import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import the intl package

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<double> prices = [100.50, 200.75, 150.30]; // Example list of prices

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: prices.length,
        itemBuilder: (context, index) {
          // Format the price in Nepalese Rupees (NPR)
          final priceFormatted =
              NumberFormat.currency(locale: 'ne_NP', symbol: 'रू')
                  .format(prices[index]);
          return ListTile(
            title: Text(
                'Item ${index + 1} - $priceFormatted'), // Display formatted price
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  prices.removeAt(index); // Remove price from the list
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add price to the list
          setState(() {
            prices.add(99.99);
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
