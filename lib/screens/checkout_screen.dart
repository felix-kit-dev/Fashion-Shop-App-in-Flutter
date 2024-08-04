import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  static const routeName = '/checkout';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Checkout Page'),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Proceed to Payment'),
              onPressed: () {
                // Implement payment gateway integration here
              },
            ),
          ],
        ),
      ),
    );
  }
}
