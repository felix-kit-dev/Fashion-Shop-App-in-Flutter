import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  final String productId;
  final String title;

  ProductDetailScreen({
    required this.productId,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final product = {
      'id': productId,
      'title': title,
      'description': 'A great product',
      'price': 29.99
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(product['title']!),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                'url_to_image',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '\$${product['price']}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                product['description']!,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
